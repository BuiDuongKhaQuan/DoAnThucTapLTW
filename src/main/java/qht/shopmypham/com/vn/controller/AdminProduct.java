package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductAdminController", value = "/admin-product")
public class AdminProduct extends HttpServlet {
    String error404 = "404.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = ProductService.getAllProduct();
        List<Categories> listCategories = CategoryService.getAllCategory();
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getProductManage() == 1) {
                if (command.equals("dashboard")) {
                    request.getRequestDispatcher("/admin-template/ec-dashboard.jsp").forward(request, response);
                }
                if (command.equals("products")) {
                    request.setAttribute("listCategories", listCategories);
                    request.setAttribute("productList", productList);
                    request.getRequestDispatcher("/admin-template/ec-product.jsp").forward(request, response);
                }
                if (command.equals("category")) {
                    request.setAttribute("listCategories", listCategories);
                    request.getRequestDispatcher("/admin-template/ec-category-list.jsp").forward(request, response);
                }
                if (command.equals("list")) {
                    request.setAttribute("listCategories", listCategories);
                    request.setAttribute("productList", productList);
                    request.getRequestDispatcher("/admin-template/ec-product-list.jsp").forward(request, response);
                }
                if (command.equals("edit")) {
                    String IdP = request.getParameter("IdP");
                    Product product = ProductService.getProductById(Integer.parseInt(IdP));
                    request.setAttribute("product", product);
                    request.setAttribute("listCategories", listCategories);
                    request.getRequestDispatcher("/admin-template/ec-product-edit.jsp").forward(request, response);
                }
                if (command.equals("editC")) {
                    String IdC = request.getParameter("IdC");
                    Categories categories = CategoryService.getCategoriesById(IdC);
                    request.setAttribute("categories", categories);
                    request.getRequestDispatcher("/admin-template/ec-category-edit.jsp").forward(request, response);
                }
                if (command.equals("add")) {
                    request.setAttribute("listCategories", listCategories);
                    request.setAttribute("img", "assets/images/sm/img.png");
                    request.getRequestDispatcher("/admin-template/ec-product-add.jsp").forward(request, response);
                }
                if (command.equals("addC")) {
                    request.getRequestDispatcher("/admin-template/ec-category-add.jsp").forward(request, response);
                }
                if (command.equals("delete")) {
                    String IdP = request.getParameter("IdP");
                    ProductService.deleteImgProduct(IdP);
                    ProductService.deleteProductById(IdP);
                    response.sendRedirect("admin-product?command=list");
                }
                if (command.equals("deleteC")) {
                    String IdC = request.getParameter("IdC");
                    CategoryService.deleteCategoryById(IdC);
                    response.sendRedirect("admin-product?command=category");
                }

            } else {
                response.sendRedirect(error404);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        if (acc == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (acc.getProductManage() == 1) {
                HttpSession session = request.getSession();
                String command = request.getParameter("command");
                String idP = request.getParameter("idP");
                String name = request.getParameter("name");
                String price = request.getParameter("price");
                String quantity = request.getParameter("quantity");
                String description = request.getParameter("description");
                String trademark = request.getParameter("trademark");
                String idC = request.getParameter("idC");

                if (command.equals("edit")) {
                    List<Image> imageList = ProductService.getImages(idP);
                    List<String> listImgPro = new ArrayList<>();
                    Map<String, String> mapImg = (Map<String, String>) request.getSession().getAttribute("imgs");
                    if (mapImg != null) {
                        for (int i = 0; i < mapImg.size(); i++) {
                            String img = request.getParameter("img" + (i + 1));
                            listImgPro.add(img);
                        }
                    }
                    if (imageList.size() >= listImgPro.size()) {
                        for (int i = 0; i < listImgPro.size(); i++) {
                            ProductService.editImgProductById(listImgPro.get(i), String.valueOf(imageList.get(i).getId()));
                        }
                    }
                    if (imageList.size() < listImgPro.size()) {
                        ProductService.deleteImgProduct(idP);
                        for (int i = 0; i < listImgPro.size(); i++) {
                            ProductService.addImageByIdP(idP, listImgPro.get(i));
                        }
                    }

                    ProductService.editProductById(name, trademark, description, idC, price, quantity, idP);
                    System.out.println(name);
                    session.removeAttribute("imgs");
                }
                if (command.equals("add")) {
                    int id = ProductService.getAllProduct().get(ProductService.getAllProduct().size() - 1).getIdP() + 1;
                    ProductService.addProduct(String.valueOf(id), name, trademark, description, idC, price, quantity);
                    Map<String, String> mapImg = (Map<String, String>) request.getSession().getAttribute("imgs");
                    for (Map.Entry<String, String> entry : mapImg.entrySet()) {
                        ProductService.addImageByIdP(String.valueOf(id), entry.getKey());
                    }
                    session.removeAttribute("imgs");
                }
                if (command.equals("promotion")) {
                    String date1 = request.getParameter("date1");
                    String date2 = request.getParameter("date2");
                    String price1 = request.getParameter("price");
                    String idP1 = request.getParameter("idP");
                    ProductService.addProductPromotion(idP1, price1, date1, date2);
                }
                if (command.equals("new")) {
                    String date_new = request.getParameter("date-new");
                    String idP1 = request.getParameter("idP");

                    ProductService.addProductNew(idP1, date_new);
                }
                if (command.equals("editC")) {
                    String IdC = request.getParameter("idC");
                    String img = request.getParameter("imgC");
                    String nameC = request.getParameter("nameC");
                    CategoryService.editCategoryById(IdC, nameC, img);
                    session.removeAttribute("imgsCategory");
                }
                if (command.equals("addC")) {
                    String nameC = request.getParameter("nameC");
                    String imgC = request.getParameter("imgC");
                    CategoryService.addCategory(nameC, imgC);
                    session.removeAttribute("imgsCategory");
                }
                if (command.equals("deleteImg")) {
                    String idImg = request.getParameter("idImg");
                    ProductService.deleteImgProductById(idImg);
                }
                if (command.equals("loadImgP")) {
                    List<Image> imageList = ProductService.getImages(idP);
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    for (Image img : imageList) {
                        response.getWriter().write("<div class=\"img-item\">\n" +
                                "                                                    <i class=\"zmdi zmdi-delete icon-remove\"\n" +
                                "                                                       onclick=\"removeImg" + img.getId() + "(" + img.getId() + ")\"></i>\n" +
                                "                                                    <img src=\"" + img.getImg() + "\" style=\"border-radius: 5px;\">\n" +
                                "                                                </div>");
                    }
                }
            } else {
                response.sendRedirect(error404);
            }
        }
    }
}
