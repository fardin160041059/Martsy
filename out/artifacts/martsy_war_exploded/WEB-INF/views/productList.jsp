<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<script>
    $(document).ready(function () {
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1, 2, 3, 5, 10, -1], [1, 2, 3, 5, 10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>


<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/productbg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="color: rgba(213,213,213,0.79)">Products</h1>

        <p class="lead" style="color: rgba(255,255,255,0.51)">Checkout all the awesome products available now!</p>
    </div>
</div>
<section class="ftco-section ftco-cart">
    <div class="container" style="font-family: 'Teko', sans-serif; font-size: 20px; color: #000000">
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="cart-list">
                    <table class="table">
                        <thead class="thead-primary">
                        <tr class="text-center">
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
                            <th>Product Name</th>
                            <th>Category</th>
                            <th>Condition</th>
                            <th>Price</th>
                            <th>&nbsp;</th>
                            <th>&nbsp;</th>
                        </tr>
                        </thead>
                        <c:forEach items="${products}" var="product">
                            <tr class="text-center">
                                <th></th>
                                <td class="image-prod"><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                                ><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                                      style="width:100%"/></a></td>
                                <td class="product-name">${product.productName}</td>
                                <td>${product.productCategory}</td>
                                <td>${product.productCondition}</td>
                                <td class="price">${product.productPrice} USD</td>
                                <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                                ><span class="glyphicon glyphicon-info-sign" style="font-size: 36px"></span></a></td>
                                <th></th>
                            </tr>
                        </c:forEach>
                    </table>
                    <a href="<c:url value="/" />" class="btn btn-primary">Back to Home</a>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
