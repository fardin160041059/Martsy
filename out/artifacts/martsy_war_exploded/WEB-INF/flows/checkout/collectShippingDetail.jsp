<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="hero-image" style="font-family: 'Lato', sans-serif; color: #000000;background-image:linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(/martsy/resources/images/customermanagebg.jpg)">
    <div class="hero-text">
        <h1 class="home-header" style="color: rgba(213,213,213,0.79)">Customer</h1>
        <p style="font-family: 'Teko', sans-serif;color: rgba(213,213,213,0.79); font-size: large" >Details</p>
    </div>
</div>
<div class="container" style="font-family: 'Teko', sans-serif; font-size: 20px; color: #000000">
        <form:form commandName="order" class="form-horizaontal">

        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br><br>
        <button class="btn btn-primary" name="_eventId_backToCollectCustomerInfo">Back</button>
        <input type="submit" value="Next" class="btn btn-success" name="_eventId_shippingDetailCollected" />
        <button class="btn btn-danger" name="_eventId_cancel">Cancel</button>
        </form:form>
</div>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
