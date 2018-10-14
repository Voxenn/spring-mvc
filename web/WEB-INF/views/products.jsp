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
                    Select from a sleek, minimalist background or a classic analog face with this exquisite black watch.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/wwatch.jpg" class="img-fluid mb-2"/>
                <t:product>
                    If you prefer a more numerical approach, the second face is your choice over the timeless analog display.
                </t:product>
            </div>
        </div>
        <div class="row m-3 p-2">
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/bbag.jpg" class="img-fluid mb-2" />
                <t:product>
                    This black leather bag is sturdy enough to carry all of your belongings wherever you decide to go.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/brbag.jpg" class="img-fluid mb-2" />
                <t:product>
                    A simple, yet stylish clutch that you can carry with you on your evenings out.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/lppurse.jpg" class="img-fluid mb-2" />
                <t:product>
                    This pink purse will match your best, and not so best, outfits for social gatherings.
                </t:product>
            </div>
        </div>
        <div class="row m-3 p-2">
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/nchead.jpg" class="img-fluid mb-2" />
                <t:product>
                    These noise cancelling headphones have the ability to go wireless with built in Bluetooth technology.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/whead.jpg" class="img-fluid mb-2"/>
                <t:product>
                    Excellent bass, plush cushioning, and a modern design are what incorporate these wireless headphones.
                </t:product>
            </div>
            <div class="col-sm">
                <img src="${pageContext.request.contextPath}resources/images/ihead.jpg" class="img-fluid mb-2"/>
                <t:product>
                    If you're on the run, then these in-ear headphones are what you deserve.
                </t:product>
            </div>
        </div>
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
    document.on
</script>
</html>
