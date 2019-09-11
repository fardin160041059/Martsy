<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<script>
    $(document).ready(function () {

        $('.table').DataTable({
            "lengthMenu": [[1, 2, 3, 5, 10, -1], [1, 2, 3, 5, 10, "All"]]
        });
    });

</script>


<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/productbg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="font-size: 50px;color: rgba(213,213,213,0.79)">Product Inventory</h1>

        <p class="lead" style="color: rgba(255,255,255,0.51)">This is the product inventory page!</p>
    </div>
</div>
<section class="ftco-section ftco-cart">
    <div class="container" style="font-family: 'Lato', sans-serif; color: #000000">
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
                                <td></td>
                                <td class="image-prod"><img
                                        src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                                        style="width:100%"/></td>
                                <td class="product-name">${product.productName}</td>
                                <td>${product.productCategory}</td>
                                <td>${product.productCondition}</td>
                                <td class="price">${product.productPrice} USD</td>
                                <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                                ><span class="glyphicon glyphicon-info-sign"></span></a>
                                    <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"
                                    ><span class="glyphicon glyphicon-remove"></span></a>
                                    <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"
                                    ><span class="glyphicon glyphicon-pencil"></span></a>
                                </td>
                                <td></td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary py-3 px-4">Add Product</a>
    </div>
</section>




<%@include file="/WEB-INF/views/template/footer.jsp" %>
