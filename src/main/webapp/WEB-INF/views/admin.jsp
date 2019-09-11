<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/adminbg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="color: #f7d866">Administrator</h1>
    </div>
</div>
<div class="container" style="font-family: 'Lato', sans-serif; color: #000000">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2 style="font-family: 'Teko', sans-serif; font-size: xx-large;">
            Welcome: ${pageContext.request.userPrincipal.name}
        </h2>
    </c:if>

    <div class="row">
        <div class="col-md-6">
            <h3 style="font-family: 'Teko', sans-serif; font-size: xx-large;">Product Inventory</h3>

            <p>Here you can view, check and modify the product inventory!<br><br>
                <a href="<c:url value="/admin/productInventory" />" class="btn btn-primary">Manage Product</a>
            </p>
        </div>
        <div class="col-md-6">
            <h3 style="font-family: 'Teko', sans-serif; font-size: xx-large;">Customer Management</h3>

            <p>Here you can view the customer information!<br><br>
                <a href="<c:url value="/admin/customer" />" class="btn btn-success ">Manage Customer</a>
            </p>

        </div>
    </div>


</div>
</div>


<%@include file="/WEB-INF/views/template/footer.jsp" %>

