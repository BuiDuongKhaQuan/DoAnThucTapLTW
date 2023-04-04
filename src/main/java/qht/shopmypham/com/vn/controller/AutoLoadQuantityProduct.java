package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.ListProductByCart;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.CartService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;

@WebServlet(name = "AutoLoadQuantityProduct", value = "/auto-load-quantity")
public class AutoLoadQuantityProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
        for (ListProductByCart l : list) {
            Product p = ProductService.getProductById(String.valueOf(l.getIdP()));
            NumberFormat nf = NumberFormat.getInstance();
            nf.setMinimumFractionDigits(0);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write("<tr>\n" +
                        "                            <td class=\"product__cart__item\">\n" +
                        "                                <div class=\"product__cart__item__pic\"\n" +
                        "                                     style=\"width: 70px;height: 70px; margin-top: 30px;\">\n" +
                        "                                    <img src=\"" + p.getImg1() + "\" alt=\"\">\n" +
                        "                                </div>\n" +
                        "                                <div class=\"product__cart__item__text\">\n" +
                        "                                    <h6>" + p.getName() + "\n" +
                        "                                    </h6>\n" +
                        "\n" +
                        "                                </div>\n" +
                        "                            </td>\n" +
                        "                            <td class=\"cart__price\" style=\"    width: 340px;\">" + nf.format(p.getPrice()) + "đ</td>\n" +
                        "                            <td class=\"quantity__item\">\n" +
                        "                                <div class=\"quantity\" style=\" display: flex\">\n" +
                        "                                    <div class=\"input-group-btn\" style=\"background-color: #111111; color: #FFFFFF\">\n" +
                        "                                        <button onclick=\"upDateQuantity(" + p.getIdP() + ",'subItem')\"\n" +
                        "                                                class=\"btn btn-sm btn-minus\" style=\"text-decoration: none\">\n" +
                        "                                            <i class=\"fa fa-minus\"\n" +
                        "                                               style=\"background-color: #111111; color: #FFFFFF\"></i>\n" +
                        "                                        </button>\n" +
                        "                                    </div>\n" +
                        "                                    <span id=\"quantity-product\"\n" +
                        "                                          class=\"form-control form-control-sm text-center  item-table\"\n" +
                        "                                          style=\"width: 30px; \">" + l.getQuantity() + "</span>\n" +
                        "                                    <div class=\"input-group-btn\" style=\"background-color: #111111; color: #FFFFFF\">\n" +
                        "                                        <button onclick=\"upDateQuantity(" + p.getIdP() + ",'addItem')\"\n" +
                        "                                                class=\"btn btn-sm btn-minus\" style=\"text-decoration: none\">\n" +
                        "                                            <i class=\"fa fa-plus\"\n" +
                        "                                               style=\"background-color: #111111; color: #FFFFFF\"></i>\n" +
                        "                                        </button>\n" +
                        "                                    </div>\n" +
                        "                                </div>\n" +
                        "                            </td>\n" +
                        "                            <td class=\"cart__price__total\">" + nf.format(p.getPrice() * l.getQuantity()) + "đ</td>\n" +
                        "                            <td class=\"cart__close\">\n" +
                        "\n" +
                        "                                <button onclick=\"upDateQuantity(" + p.getIdP() + ",'deleteItem')\"\n" +
                        "                                        class=\"btn btn-sm  btn-minus\" style=\"text-decoration: none\">\n" +
                        "                                    <i class=\"fa fa-close\" style=\"margin-left: 10px\"></i>\n" +
                        "                                </button>\n" +
                        "                            </td>\n" +
                        "                        </tr>");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumFractionDigits(0);
        double totalPrice = 0;
        for (ListProductByCart l : list) {
            Product p = ProductService.getProductById(String.valueOf(l.getIdP()));
            totalPrice += (p.getPrice() * l.getQuantity());
        }
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("<li>Đơn giá <span>"+nf.format(totalPrice)+"đ</span></li>\n" +
                "                     <li>Phí vận chuyển <span>25000đ</span></li>\n" +
                "                     <li>Tổng cộng <span>"+nf.format(totalPrice+25000)+"đ</span></li>");
    }
}