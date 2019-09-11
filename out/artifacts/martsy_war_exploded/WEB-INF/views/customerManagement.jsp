<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/customermanagebg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="color: rgba(213,213,213,0.79)">Customer Management</h1>
    </div>
</div>
<section class="ftco-section ftco-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="cart-list">
                    <table class="table"  style="font-family: 'Teko', sans-serif; font-size: 20px; color: #000000">
                        <thead class="thead-primary">
                        <tr class="text-center">
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Username</th>
                            <th>Enabled</th>

                        </tr>
                        </thead>
                        <c:forEach items="${customerList}" var="customer">
                            <tbody style="color: #2a2a2a">
                            <tr>
                                <td>${customer.customerName}</td>
                                <td>${customer.customerEmail}</td>
                                <td>${customer.customerPhone}</td>
                                <td>${customer.username}</td>
                                <td>${customer.enabled}</td>
                            </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                    <a href="<c:url value="/admin" />" class="btn btn-primary">Back</a>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
