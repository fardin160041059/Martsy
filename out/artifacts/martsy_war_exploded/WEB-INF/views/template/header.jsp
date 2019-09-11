<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
<%--        <link rel="icon" href="../../favicon.ico">--%>

    <title>Martsy</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="<c:url value="/resources/fonts/flaticon/flaticon.css"/>">


    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">


    <!-- Google Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Anton|Lato|Lobster|Teko&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- Bootstrap core CSS -->
    <%--    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">--%>
<%--    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">--%>

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper" style="font-family: 'Teko', sans-serif; font-size: x-large;">
    <div class="container">

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">

                    <a class="navbar-brand"
                       style="font-family: 'Lobster', cursive; font-size: xx-large; color: rgba(0,0,0,0.71)"
                       href="<c:url value="/" /> ">Martsy</a>

                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>

                <div id="navbar" class="navbar-collapse collapse">

                    <ul class="nav navbar-nav" style=" color: rgba(0,0,0,0.78)">
                        <li><a href="<c:url value="/" /> "
                               style=" color: rgba(0,0,0,0.78)">Home</a></li>
                        <li><a href="<c:url value="/product/productList/all" />"
                               style=" color: rgba(0,0,0,0.78)">Products</a>
                        </li>
                        <li><a href="<c:url value="/about" />"
                               style=" color: rgba(0,0,0,0.78)">About Us</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li>
                                <a
                                        style=" color: rgba(0,0,0,0.78)">Welcome ${pageContext.request.userPrincipal.name}</a>
                            </li>
                            <li><a href="<c:url value="/j_spring_security_logout" />"
                                   style=" color: rgba(0,0,0,0.78)">Logout</a></li>
                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />"
                                       style=" color: rgba(0,0,0,0.78)">Cart</a>
                                </li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name  == 'admin'}">
                                <li><a href="<c:url value="/admin" />"
                                       style=" color: rgba(0,0,0,0.78)">Admin</a>
                                </li>
                            </c:if>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                            <li><a href="<c:url value="/login/" />"
                                   style=" color: rgba(0,0,0,0.78)">Login</a>
                            </li>
                            <li><a href="<c:url value="/register"  />"
                                   style=" color: rgba(0,0,0,0.78)">Register</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>