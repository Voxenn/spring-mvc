<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ variable name-given="price" scope="AT_BEGIN" %>

<div>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Item Description</button>
    <form class="float-right" name="modelDetail1" method="POST" action="servlet/CartController">
        <input type="hidden" name="quantity" value="1" >
        <jsp:doBody/>
        <input type="hidden" name="price" value="${price}">
        <input type="hidden" name="action" value="add">
        <button class="btn btn-danger" type="submit"  data-target="" value="Add To Cart">Add To Cart</button>
    </form>
</div>


