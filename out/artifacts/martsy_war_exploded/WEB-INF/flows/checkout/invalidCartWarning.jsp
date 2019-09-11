<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/oopsbg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="color: rgba(213,213,213,0.79)">Cart</h1>
    </div>
</div>

<section class="container text-center">
    <p>
        <h1 style="font-family: 'Teko', sans-serif; font-size: 100px; color: #000000">Oops!</h1>
    </p> <p style="font-family: 'Teko', sans-serif; font-size: xx-large; color: #000000"> Your cart is empty!
        <br>
        <br>
        <a href="<spring:url value="/product/productList/all" />" class="btn btn-primary">Back to Products</a>
    </p>
</section>


<%@include file="/WEB-INF/views/template/footer.jsp" %>