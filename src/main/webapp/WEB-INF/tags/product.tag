<div>
    <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Item Description</button>
    <form class="float-right" name="modelDetail1" method="POST" action="servlet/CartController">
        <input type="hidden" name="quantity" value="1" >
        <input type="hidden" name="price" value="10">
        <input type="hidden" name="action" value="add">
        <button class="btn btn-danger" type="submit"  data-target="" value="Add To Cart">Add To Cart</button>
        <!--<input type="submit" name="addToCart" value="Add To Cart">-->
    </form>
    <!--<button type="button" class="btn btn-danger float-right" data-target="">Add To Cart</button>-->
</div>
<div id="" class="collapse demo">
    <jsp:doBody/>
</div>
