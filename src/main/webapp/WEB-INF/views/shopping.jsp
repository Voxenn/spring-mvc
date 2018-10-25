<%--
  Created by IntelliJ IDEA.
  User: Voxenn
  Date: 10/13/2018
  Time: 1:33 PM
  Template courtesy of tutorialzone.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${title}</title>
</head>
<t:wrapper>
    <main class="page">
        <section class="shopping-cart dark">
            <div class="container">
                <div class="block-heading">
                    <h2>${title}</h2>
                    <jsp:useBean id="cart" scope="session" class="beans.CartBean" />
                    <c:if test="${cart.lineItemCount==0}">
                        <p>Cart is currently empty.</p>
                    </c:if>
                </div>
                <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
                    <form name="item" method="POST" action="servlet/CartController">
                        <div class="content">
                            <div class="row">
                                <div class="col-md-12 col-lg-8">
                                    <div class="items">
                                        <div class="product">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <img class="img-fluid mx-auto d-block image" src="${pageContext.request.contextPath}resources/images/${cartItem.image}">
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="info">
                                                        <div class="row">
                                                            <div class="col-md-5 product-name">
                                                                <div class="product-name">
                                                                    <a href="#"><c:out value="${cartItem.partNumber}"/></a>
                                                                    <div class="product-info">
                                                                        <div>Description: <span class="value"><c:out value="${cartItem.modelDescription}"/></span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 quantity">
                                                                <label for="quantity">Quantity:</label>
                                                                <input id="quantity" class="form-control quantity-input" type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>'>
                                                            </div>
                                                            <div class="col-md-3 price">
                                                                <span>$<c:out value="${cartItem.unitCost}"/></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </c:forEach>
                <div class="col-md-12 col-lg-4">
                    <div class="summary">
                        <h3>Summary</h3>
                        <div class="summary-item"><span class="text">Subtotal</span><span class="price">$<c:out value="${cart.orderTotal}"/></span></div>
                        <div class="summary-item"><span class="text">Discount</span><span class="price">$0</span></div>
                        <div class="summary-item"><span class="text">Shipping</span><span class="price">$0</span></div>
                        <div class="summary-item"><span class="text">Total</span><span class="price">$<c:out value="${cart.orderTotal}"/></span></div>
                        <a type="button" class="btn btn-primary btn-lg btn-block" a href="payment">Checkout</a>
                    </div>
                </div>
            </div>
        </section>
    </main>
</t:wrapper>
</html>
