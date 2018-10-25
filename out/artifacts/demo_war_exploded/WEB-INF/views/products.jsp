<%--
  Created by IntelliJ IDEA.
  User: Voxenn
  Date: 10/13/2018
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${title}</title>

</head>
<t:wrapper>
    <c:set var="counter" value="0" scope="page"/>
    <div class="container">
        <c:forEach var = "i" begin = "1" end = "3">
            <div class="row m-3 p-2">
                <c:forEach var = "prod" items = "${productList}" begin = "${counter}" end = "${counter + 2}" varStatus="loop">
                    <div class="col-sm">
                        <img src="${pageContext.request.contextPath}resources/images/${prod.productImage}" class="img-fluid mb-2" />
                        <div>
                            <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Item Description</button>
                            <form class="float-right" name="modelDetail1" method="POST" action="servlet/CartController">
                                <c:set var="image" value="${prod.productImage}"/>
                                <c:set var="price" value="${prod.productPrice}"/>
                                <c:set var="description" value="${prod.productDescription}"/>
                                <input type="hidden" name="image" value="${image}">
                                <input type="hidden" name="description" value="${description}">
                                <input type="hidden" name="quantity" value="1" >
                                <input type="hidden" name="price" value="${price}">
                                <input type="hidden" name="action" value="add">
                                <button class="btn btn-danger" type="submit"  data-target="" value="Add To Cart">Add To Cart</button>
                            </form>
                        </div>
                        <div id="" class="collapse demo">
                                ${prod.productDescription}
                        </div>
                    </div>
                    <c:set var="counter" value="${counter + 1}"/>
                </c:forEach>
            </div>
        </c:forEach>
    </div>
</t:wrapper>
<script>
    window.onload = function() {
        var list, targetList;
        list = document.getElementsByClassName("collapse demo");
        targetList = document.getElementsByClassName("btn btn-info");
        for(var i = 0; i < list.length; i++ ){
            list[i].setAttribute("id", "demo" + i);
            targetList[i].setAttribute("data-target", "#" + list[i].getAttribute("id"));
        }

    }
</script>
</html>
