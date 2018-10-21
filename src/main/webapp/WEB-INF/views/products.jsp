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
<c:set var="count" value="0" scope="page"/>
<%
    ResultSet result = null;
    String[] description = new String[9];
    String[] image = new String[9];
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
    };
    while(result.next()) {
        int rs = 0;
        description[rs] = result.getString("ProductDescription");
        image[rs] = result.getString("ProductImage");
%>
        <c:set var="productID"><%=result.getString("ProductID")%></c:set>
        <c:set var="description"><%=result.getString("ProductDescription")%></c:set>
        <c:set var="price"><%=result.getString("Price")%></c:set>
        <c:set var="image"><%=result.getString("ProductImage")%></c:set>
        <div class="col-sm">
        <img src="${pageContext.request.contextPath}resources/images/${image}" class="img-fluid mb-2" />
        <c:set var="description"><%=result.getString("ProductDescription")%></c:set>
        <t:product>
            ${description}
        </t:product>
        </div>

<%
    rs++;
    }%>
<t:wrapper>
    <div class="container">
        <c:forEach var = "i" begin = "1" end = "3">
            <div class="row m-3 p-2">
                <c:forEach var = "j" begin = "1" end = "3" varStatus="loop">
                    <c:set var="counter" value="0" scope="page"/>
                    <div class="col-sm">
                        <img src="${pageContext.request.contextPath}resources/images/${image}" class="img-fluid mb-2" />
                        <t:product>
                            <c:out value="description"/>
                            ${description}
                        </t:product>
                    </div>
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
