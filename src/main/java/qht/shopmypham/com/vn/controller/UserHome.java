package qht.shopmypham.com.vn.controller;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.TokenResponseException;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleTokenResponse;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.*;
import qht.shopmypham.com.vn.tools.DateUtil;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@WebServlet(name = "Home", value = "/home")
public class UserHome extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Home home = HomeService.getHome();
        Selling selling = ProductService.getSelling();
        Product productSelling = ProductService.getProductById(selling.getIdP());
        List<Slider> listSlider = SliderSerivce.getListSlider();
        List<Blog> blogList = BlogService.getLimitBlog(home.getQuantityBlog());
        List<Categories> categoriesHome = new ArrayList<>();
        categoriesHome.add(CategoryService.getCategoriesById(String.valueOf(home.getIdC1())));
        categoriesHome.add(CategoryService.getCategoriesById(String.valueOf(home.getIdC2())));
        categoriesHome.add(CategoryService.getCategoriesById(String.valueOf(home.getIdC3())));

        List<Product> promotionProducts = new ArrayList<>();
        List<Product> newProducts = new ArrayList<>();
        List<NewProduct> newProductList = ProductService.getNewProduct(home.getQuantityProN());
        List<PromotionProduct> promotionProductList = ProductService.getPromotionProduct(home.getQuantityProP());
        String pattern = "hh:mm:ss a dd/MM/yyyy";
        SimpleDateFormat formatter = new SimpleDateFormat(pattern);
        for (PromotionProduct pp : promotionProductList) {
            try {
                Date date1 = formatter.parse(pp.getStartDay());
                Date date2 = formatter.parse(pp.getEndDay());
                Date dateNow = formatter.parse(DateUtil.getDateNow());
                if (dateNow.after(date1) && dateNow.before(date2)) {
                    promotionProducts.add(ProductService.getProductById(pp.getIdP()));
                }
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
        }
        for (NewProduct np : newProductList) {
            try {
                Date date_new = formatter.parse(np.getCountDay());
                Date dateNow = formatter.parse(DateUtil.getDateNow());
                if (dateNow.before(date_new)) {
                    newProducts.add(ProductService.getProductById(np.getIdP()));
                }
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
        }
        List<ImageTrend> content = new ArrayList<>();
        List<String> img = new ArrayList<>();
        List<ImageTrend> imageTrendList = HomeService.getImageFs();
        for (int i = 0; i < 3; i++) {
            content.add(imageTrendList.get(i));
        }
        for (int i = 3; i < imageTrendList.size(); i++) {
            if (imageTrendList.get(i).getStatus() == 1) {
                img.add(imageTrendList.get(i).getImg());
            }
        }
        request.setAttribute("contentTrends", content);
        request.setAttribute("imgTrends", img);
        request.setAttribute("selling", selling);
        request.setAttribute("productSelling", productSelling);
        request.setAttribute("lisPromotion", promotionProducts);
        request.setAttribute("listNew", newProducts);
        request.setAttribute("categoryList", categoriesHome);
        request.setAttribute("blogList", blogList);
        request.setAttribute("listSlider", listSlider);
        request.setAttribute("activeHome", "active");


        request.getRequestDispatcher("/user-template/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
