
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>

<%--
  Created by IntelliJ IDEA.
  User: Voxenn
  Date: 10/12/2018
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<t:wrapper>
    <title>${title}</title>
    <h1 class="montserrat" align="center">${attribute}</h1>
    <div >
        <div class="openImage"></div>
        <div class="openImage"></div>
        <div class="openImage"></div>
        <form:form method = "GET" action = "/dispatcher/staticPage">
          <table>
            <tr>
              <td>
                <input type = "submit" value = "Get HTML Page"/>
              </td>
            </tr>
          </table>
        </form:form>
    </div>
  </t:wrapper>
</html>
