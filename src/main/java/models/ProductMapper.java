package models;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class ProductMapper implements RowMapper<Products> {
    public Products mapRow(ResultSet rs, int rowNum) throws SQLException {
        Products products = new Products();
        products.setProductID(rs.getString("ProductID"));
        products.setProductDescription(rs.getString("ProductDescription"));
        products.setProductImage(rs.getString("ProductImage"));
        products.setProductPrice(rs.getDouble("Price"));
        return products;
    }
}
