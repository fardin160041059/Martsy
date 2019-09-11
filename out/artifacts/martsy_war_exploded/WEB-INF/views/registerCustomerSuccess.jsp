<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/registerbg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="color: rgba(213,213,213,0.79)">Register</h1>
    </div>
</div>
<div class="container-wrapper">
    <div class="container">
        <section class="container">
            <p style="font-family: 'Teko', sans-serif;color: rgb(0,0,0); font-size: large">Congratulations! <br>Registration is successful!
                <a href="<spring:url value="/" />" class="btn btn-primary">Home</a>
            </p>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>