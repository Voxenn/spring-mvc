<%--
  Created by IntelliJ IDEA.
  User: Voxenn
  Date: 10/13/2018
  Time: 1:33 PM
  Template courtesy of tutorialzone.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<html>
<head>
    <title>${title}</title>
</head>
<t:wrapper>
    <main class="page">
        <section class="shopping-cart dark">
            <div class="container">
                <div class="block-heading">
                    <h2>Shopping Cart</h2>
                    <p>Placeholder shopping cart page</p>
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-md-12 col-lg-8">
                            <div class="items">
                                <div class="product">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <img class="img-fluid mx-auto d-block image" src="${pageContext.request.contextPath}resources/images/bwatch.jpg">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="info">
                                                <div class="row">
                                                    <div class="col-md-5 product-name">
                                                        <div class="product-name">
                                                            <a href="#">Lorem Ipsum dolor</a>
                                                            <div class="product-info">
                                                                <div>Display: <span class="value">5 inch</span></div>
                                                                <div>RAM: <span class="value">4GB</span></div>
                                                                <div>Memory: <span class="value">32GB</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 quantity">
                                                        <label for="quantity">Quantity:</label>
                                                        <input id="quantity" type="number" value ="1" class="form-control quantity-input">
                                                    </div>
                                                    <div class="col-md-3 price">
                                                        <span>$120</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <img class="img-fluid mx-auto d-block image" src="${pageContext.request.contextPath}resources/images/bbag.jpg">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="info">
                                                <div class="row">
                                                    <div class="col-md-5 product-name">
                                                        <div class="product-name">
                                                            <a href="#">Lorem Ipsum dolor</a>
                                                            <div class="product-info">
                                                                <div>Display: <span class="value">5 inch</span></div>
                                                                <div>RAM: <span class="value">4GB</span></div>
                                                                <div>Memory: <span class="value">32GB</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 quantity">
                                                        <label for="quantity">Quantity:</label>
                                                        <input id="quantity2" type="number" value ="1" class="form-control quantity-input">
                                                    </div>
                                                    <div class="col-md-3 price">
                                                        <span>$120</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <img class="img-fluid mx-auto d-block image" src="${pageContext.request.contextPath}resources/images/wwatch.jpg">
                                        </div>
                                        <div class="col-md-8">
                                            <div class="info">
                                                <div class="row">
                                                    <div class="col-md-5 product-name">
                                                        <div class="product-name">
                                                            <a href="#">Lorem Ipsum dolor</a>
                                                            <div class="product-info">
                                                                <div>Display: <span class="value">5 inch</span></div>
                                                                <div>RAM: <span class="value">4GB</span></div>
                                                                <div>Memory: <span class="value">32GB</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4 quantity">
                                                        <label for="quantity">Quantity:</label>
                                                        <input id="quantity3" type="number" value ="1" class="form-control quantity-input">
                                                    </div>
                                                    <div class="col-md-3 price">
                                                        <span>$120</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-4">
                            <div class="summary">
                                <h3>Summary</h3>
                                <div class="summary-item"><span class="text">Subtotal</span><span class="price">$360</span></div>
                                <div class="summary-item"><span class="text">Discount</span><span class="price">$0</span></div>
                                <div class="summary-item"><span class="text">Shipping</span><span class="price">$0</span></div>
                                <div class="summary-item"><span class="text">Total</span><span class="price">$360</span></div>
                                <a type="button" class="btn btn-primary btn-lg btn-block" a href="payment">Checkout</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</t:wrapper>
</html>
