<%--
  Created by IntelliJ IDEA.
  User: Voxenn
  Date: 10/13/2018
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>${title}</title>
</head>
<t:wrapper>
    <div class="container">
        <div class="row m-3 p-2">
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/bamboowatch.jpg" class="img-fluid mb-2" />
                <t:product>
                A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/bwatch.jpg" class="img-fluid mb-2"/>
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/wwatch.jpg" class="img-fluid mb-2"/>
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
        </div>
        <div class="row m-3 p-2">
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/bbag.jpg" class="img-fluid mb-2" />
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/brbag.jpg" class="img-fluid mb-2" />
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/lppurse.jpg" class="img-fluid mb-2" />
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
        </div>
        <div class="row m-3 p-2">
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/nchead.jpg" class="img-fluid mb-2" />
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/whead.jpg" class="img-fluid mb-2"/>
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/ihead.jpg" class="img-fluid mb-2"/>
                <t:product>
                    A sophisticated watch elegantly made from bamboo. Features a standard analog display with a classic clasp.
                </t:product>
            </div>
        </div>
    </div>
</t:wrapper>
</html>
