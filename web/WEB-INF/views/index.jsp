<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
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
    <h1 align="center">${attribute}</h1>
    <form:form method = "GET" action = "/dispatcher/staticPage">
      <table>
        <tr>
          <td>
            <input type = "submit" value = "Get HTML Page"/>
          </td>
        </tr>
      </table>
    </form:form>
  ${end}
  </t:wrapper>
</html>
