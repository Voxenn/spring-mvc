package models;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public class ProductJDBC implements ProductDAO {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }
    public List<Products> listProducts() {
        String SQL = "select * from Products";
        List <Products> products = jdbcTemplateObject.query(SQL, new ProductMapper());
        return products;
    }
}