package models;

import java.util.List;
import javax.sql.DataSource;

public interface ProductDAO {
    /**
     * This is the method to be used to initialize
     * database resources ie. connection.
     */
    public void setDataSource(DataSource ds);

    /**
     * This is the method to be used to list down
     * all the records from the Student table.
     */
    public List<Products> listProducts();
}