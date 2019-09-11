
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


    <div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/oopsbg.jpg)">
        <div class="hero-text">
            <h1 class="home-header" style="color: rgba(213,213,213,0.79)">Cart</h1>


        </div>
    </div>
<div class="container-wrapper">
        <section class="container">
            <p class="lead" style="font-family: 'Teko', sans-serif;color: rgb(0,0,0)">You cancelled your checkout!</p>
            <p>
                <a href="<spring:url value="/product/productList/all" />" class="btn btn-primary">Products</a>
            </p>
        </section>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>