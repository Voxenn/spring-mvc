package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.*;

import static java.lang.System.out;


@Controller
public class ProductsController {
    ResultSet result = null;
    @RequestMapping("/products")
    public String products(Model m) {
        m.addAttribute("title", "Products");
        return "products";
    }
/*
    @RequestMapping("/products")
    public void connectDB(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=Products;user=voxenn;password=Cf-?=X=2VF66AGyPXA";
            Connection con = DriverManager.getConnection(connectionUrl);
            String query = "SELECT * FROM dbo.Products";
            Statement statement = con.createStatement();
            result = statement.executeQuery(query);
        } catch (Exception e) {
            out.println("Exception" + e.getMessage());
            e.printStackTrace();
        }
    }*/
}
