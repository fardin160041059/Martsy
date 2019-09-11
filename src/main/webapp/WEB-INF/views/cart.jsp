<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/cartbg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="color: #f58989">Cart</h1>

        <p class="lead" style="color: #f58989">Your selected products</p>
    </div>
</div>


<section class="ftco-section ftco-cart" ng-app="cartApp">
    <div class="container" style="font-family: 'Lato', sans-serif; color: #000000">
        <div class="row">
            <div class="col-md-12">
                <div class="cart-list">
                    <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
                        <a href="<spring:url value="/" />" class="btn btn-primary">Continue Shopping</a><br>
                        <table class="table" >
                            <thead class="thead-primary">
                            <tr class="text-center">
                                <th>Product</th>
                                <th>Unit Price</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tr class="text-center" ng-repeat="item in cart.cartItems">
                                <td class="product-name">{{item.product.productName}}</td>
                                <td class="price">{{item.product.productPrice}}</td>
                                <td class="quantity">{{item.quantity}}</td>
                                <td class="quantity">{{item.totalPrice}}</td>
                                <td class="product-remove"><a href="#" class="label label-danger"
                                                              ng-click="removeFromCart(item.product.productId)">
                                    <span class="glyphicon glyphicon-remove"></span>remove</a></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="quantity">Grand Total</td>
                                <td class="quantity">{{calGrandTotal()}}</td>
                                <td></td>
                            </tr>
                        </table>
                        <div>
                            <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                                    class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
                            <a href="<spring:url value="/order/${cartId}"/>"
                               class="btn btn-success pull-right"><span
                                    class="glyphicon-shopping-cart glyphicon"></span> Check out
                            </a>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>