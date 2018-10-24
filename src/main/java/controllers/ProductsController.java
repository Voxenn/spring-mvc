package controllers;

import models.ProductJDBC;
import models.Products;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.*;
import java.util.List;

import static java.lang.System.out;


@Controller
public class ProductsController {
    private Products product;
    ResultSet result = null;
    @RequestMapping("/products")
    public String products(Model m) {
        m.addAttribute("title", "Products");
        try {
            ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
            ProductJDBC productJDBC =
                    (ProductJDBC)context.getBean("productsJDBC");
            List<Products> products = productJDBC.listProducts();
            m.addAttribute("productList", products);
        } catch (Exception e) {
            out.println("Exception" + e.getMessage());
            e.printStackTrace();
        }
        return "products";
    }

}
