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
                        <t:product>
                            ${prod.productDescription}
                        </t:product>
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
