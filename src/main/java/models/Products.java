package models;

public class Products {
    private String productID;
    private String productDescription;
    private String productImage;
    private double productPrice;

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productImage) {
        this.productDescription = productImage;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }
}
