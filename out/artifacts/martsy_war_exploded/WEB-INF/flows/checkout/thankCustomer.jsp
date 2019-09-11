<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


    <div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/congratsbg.jpg)">
        <div class="hero-text">
            <h1 class="home-header" style="color: rgba(213,213,213,0.79)">Congratulations!</h1>
        </div>
    </div>
<div class="container-wrapper">
        <section class="container">

            <p class="lead" style="font-family: 'Teko', sans-serif; color: rgb(0,0,0)">Thank you for your purchase.
            </p>
            <p>
                <a href="<spring:url value="/" />" class="btn btn-primary btn-block">OK</a>
            </p>
        </section>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>