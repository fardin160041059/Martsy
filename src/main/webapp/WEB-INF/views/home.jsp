<%@include file="/WEB-INF/views/template/header.jsp" %>


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide img-responsive"
                 src="<c:url value="/resources/images/bg1.jpg" />"
                 alt="First slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1 class="home-header" style="color:#01142F;">Books</h1>


                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide img-responsive"
                 src="<c:url value="/resources/images/bg2.jpg" />"
                 alt="Second slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1 class="home-header" style="color:rgba(140,92,58,0.51) ">Accessories</h1>


                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide img-responsive"
                 src="<c:url value="/resources/images/bg3.jpg" />"
                 alt="Third slide">

            <div class="container">
                <div class="carousel-caption">
                    <h1 class="home-header" style="color: rgba(0,0,0,0.21)">Souvenir</h1>


                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" style="color: #01142F" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" style="color: #01142F" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center">
                <h1 class="big">Products</h1>
                <h2 class="mb-4" style="font-family: 'Teko', sans-serif;font-size: 36px; color: #000000">Our
                    Products</h2>
            </div>
        </div>
    </div>

    <div class="container marketing" style="font-family: 'Teko', sans-serif; font-size: 20px">

        <!-- Three columns of text below the carousel -->
        <div class="row">
            <div class="col-lg-4">
                <a href="<c:url value="/product/productList?searchCondition=books" />">
                    <img class="img-rounded" src="<c:url value="/resources/images/bookhome.jpg" />" alt="Books
                Image" width="140" height="140"></a>

                <h2>Books</h2>
                <p>So many books, so little time.</p>

            </div>


            <div class="row">
                <div class="col-lg-4">
                    <a href="<c:url value="/product/productList?searchCondition=souvenir" />">
                        <img class="img-rounded" src="<c:url value="/resources/images/souvenirhome.jpg" />" alt="Souvenir
                Image" width="140" height="140"></a>

                    <h2>Souvenir</h2>
                    <p>Keep some souvenirs of your past, or how will you ever prove it wasn't all a dream?</p>

                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <a href="<c:url value="/product/productList?searchCondition=accessories" />">
                            <img class="img-rounded" src="<c:url value="/resources/images/accessorieshome.jpg" />" alt="Accessories
                Image" width="140" height="140"></a>
                        <h2>Accessories</h2>
                        <p>Sometimes simple accessories are all you need.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!----------------Image------------------->
<section class="ftco-section ftco-section-more img" style="background-image: url(/martsy/resources/images/counterbg.jpg);">
    <div class="container">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section">
                <h2>Summer Sale</h2>
            </div>
        </div>
    </div>
</section>






<!---------------Services----------------------->
<section class="ftco-section bg-light ftco-services">
    <div class="container" style="font-family: 'Teko', sans-serif; font-size: large">
        <div class="row justify-content-center mb-3 pb-3">
            <div class="col-md-12 heading-section text-center">
                <h1 class="big">Services</h1>
                <h2   style="font-family: 'Teko', sans-serif;color: #000000">We want you to express yourself</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 text-center d-flex align-self-stretch">
                <div class="media block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-4">
                        <span class="flaticon-like"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Refund Policy</h3>
                        <p>Don't like a product you bought? You can return back!</p>

                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center d-flex align-self-stretch">
                <div class="media block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-4">
                        <span class="flaticon-box"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Premium Packaging</h3>
                        <p>Your products will be safely delivered</p>

                    </div>
                </div>
            </div>
            <div class="col-md-4 text-center d-flex align-self-stretch">
                <div class="media block-6 services">
                    <div class="icon d-flex justify-content-center align-items-center mb-4">
                        <span class="flaticon-medal"></span>
                    </div>
                    <div class="media-body">
                        <h3 class="heading">Superior Quality</h3>
                        <p>The best quality product you can wish for.</p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="/WEB-INF/views/template/footer.jsp" %>

