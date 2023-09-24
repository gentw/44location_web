@extends('index')
@section('title_and_meta')

@endsection
@section('content')

<div class="r-wrapper">
        
        <section id="r-advantages-part" class="r-advantages-part">
          <div class="r-advantage-main-part">
            <div class="container clearfix">
              <div class="advantage-head">
                <span>120+ CARS TYPE &amp; BRANDS</span>
                <h2>44Location <b>Advantages.</b></h2>
              </div>
              <div class="row clearfix">
                 <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-xs-12" ng-repeat="advantages in includes.global.many[0]['advantages']">
                   <div class="r-advantages-box">
                     <div class="icon"> <img src="/img/manjakos/<%advantages['collections']['icon']%>" alt=""> </div>
                     <div class="head animated pulse"><%advantages['collections']['title']['en']%></div>
                     <div class="sub-text" ng-bind-html="advantages['collections']['description']['en']">Call us Anywhere Anytime</div>
                   </div>
                 </div>
               
              </div>
            </div>
          </div>
        </section>
        <section id="r-about-info">
          <div class="r-about-info">
            <div class="container">
              <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                  <div class="r-about-info-img">
                    <img src="img/manjakos/{{ $one['aboutus']['collections']['about_image'] }}" class="img-fluid d-block m-auto" alt="">
                  </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                  <div class="r-about-info-content">
                    <div class="r-sec-head r-sec-head-left r-sec-head-line r-sec-head-w pt-0">
                      <span>KNOW MORE ABOUT US</span>
                      <h2>Who <b>44Location</b> Are.</h2>
                    </div>
                    {!!$one['aboutus']['collections']['about_text']['en']!!}
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- <section id="r-new-member">
          <div class="r-new-member">
            <div class="container">
              <div class="r-sec-head r-sec-head-left r-sec-head-line r-sec-head-r pt-0">
                <span>NEW MEMBER DISCOUNT</span>
                <h2>Reserved Now & Get <b>50% Off</b> <br>for Audi & Mercedes Only.</h2>
              </div>

              <div class="row r-discounted-car">
                

		<div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                  <div class="r-discount-single">
                    <a href="#"><img src="assets/images/discount-car-01.jpg" alt=""></a>
                    <div class="r-discount-content">
                      <ul class="mb-0 pl-0 r-starts">
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                      </ul>
                      <h4><a href="#"> <%advantages['collections']['model']['en']%></a></h4>
                      <div class="r-price-discount"><span class="r-cut-price">$50.00</span> <b>25.00 USD</b> per day</div>
                      <ul class="pl-0 mb-0 r-car-point clearfix">
                        <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                        <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                        <li><i class="fa fa-road"></i><span>2.3k CC</span></li>
                      </ul>
                    </div>
                  </div>
                </div>
                
                
                </div>
              </div>
            </div>
          </div>
        </section> -->
        <div id="map" style="width: 100%;
        height: 600px;"></div>
        <section>
          <div class="r-best-vehicles">
            <div class="r-sec-head r-accent-color r-sec-head-v">
              <span>FEATURED CARS</span>
              <h2>Our <b>Best Offers.</b></h2>
            </div>
            <div class="container">
              <div class="row clearfix r-best-offer-list">


                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12"  ng-repeat="x in includes.global.many[1]['bestoffers']">
                  <div class="r-best-offer-single">
                    <div class="r-best-offer-in">
                      <div class="r-offer-img" style="background-image: url('/img/manjakos/<%x['collections']['photo']%>') !important;">
                        <!-- <a class="d-inline-block" href="#"><img src="assets/images/bmw.jpg" class="img-fluid d-block m-auto" alt=""></a> -->
                        <div class="r-offer-img-over">
                          <i class="fa fa-search"></i>
                        </div>
                      </div>
                      <div class="r-best-offer-content">
                        <a href="#"><b><%x['collections']['manufacturer']['en']%></b> <%x['collections']['model']['en']%></a>
                        <p>Start at <b><%x['collections']['price_per_day']['en']%></b> per day</p>
                        <ul class="pl-0 mb-0">
                          <li><i class="fa fa-car"></i><span><%x['collections']['production_year']['en']%></span></li>
                          <li><i class="fa fa-cogs"></i><span><%x['collections']['transmission']['en']%></span></li>
                          <li><i class="fa fa-beer"></i><span><%x['collections']['fuel']['en']%></span></li>
                          <li><i class="fa fa-road"></i><span><%x['collections']['volume']['en']%></span></li>
                        </ul>
                      </div>
                      <div class="r-offer-rewst-this">
                        <span class="text-uppercase">Rent this car</span>
                      </div>
                    </div>
                  </div>
                </div>
                


              </div>
            </div>
          </div>
        </section>

        <section id="r-quote">
          <div class="r-quote r-quote-sub pt-0 r-quote-noafter">
            <div class="r-sec-head r-accent-color r-sec-head-t">
              <span>LATEST TESTIMONIAL</span>
              <h2>What <b>They Say</b> About Us.</h2>
            </div>
            <div class="container">
              <div class="row">
                  <div class="col-md-12" data-wow-delay="0.2s">
                      <div id="r-quote-carousel" class="carousel slide">
                        <div class="carousel-inner" role="listbox">
                          <div class="carousel-item">
                             <p>“is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in”</p>
                          </div>
                          <div class="carousel-item active">
                            <p>“is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in”</p>
                          </div>
                          <div class="carousel-item">
                             <p>“is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in”</p>
                          </div>
                        </div>
                        <ol class="carousel-indicators">
                          <li data-target="#r-quote-carousel" data-slide-to="0">
                            <img class="img-fluid d-block" src="assets/images/user-02.jpg" alt="">
                            <span>
                              <b>Robertho Garcia</b> <br>
                              Graphic Designer
                            </span>
                          </li>
                          <li data-target="#r-quote-carousel" data-slide-to="1" class="active text-center">
                            <img class="img-fluid d-block" src="assets/images/user-01.png" alt="">
                            <span>
                              <b>Robertho Garcia</b> <br>
                              Graphic Designer
                            </span>
                          </li>
                          <li data-target="#r-quote-carousel" data-slide-to="2">
                           <img class="img-fluid d-block" src="assets/images/user-03.jpg" alt="">
                           <span>
                              <b>Robertho Garcia</b> <br>
                              Graphic Designer
                           </span>
                          </li>
                        </ol>
                      </div>
                  </div>
              </div>
            </div>
          </div>
        </section>
        
        <!-- <section id="r-drivers"> 
          <div class="r-driver-blog-dark">
            <div class="r-sub-banners clearfix">
              <div class="r-sub-banner-in r-sub-dark">
                <span>BLACK CARS DISCOUNT 50%</span>
                <h4>Special Offers For <br><b>Black Friday.</b></h4>
              </div> 
              <div class="r-sub-banner-in r-sub-accent">
                <span>MONTHLY SPECIAL OFFER</span>
                <h4>Rent 3 Days & Get <br><b>Free Insurance.</b></h4>
              </div>
            </div>
            <div class="r-sec-head r-accent-color r-sec-head-s">
              <span>OUR PROFESSIONAL STAFF</span>
              <h2>44Location <b>Drivers.</b></h2>
            </div>
            <div class="container">
              <div class="r-driver-blog">
                <div class="row clearfix">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                      <div class="r-drivers">
                        <div class="r-drivers-detail">
                          <div class="name">Luis <br>Henrique</div>
                          <div class="text">5 Years Experience</div>
                          <div class="icon">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                          </div>
                        </div>
                        <div class="drivers-img">
                          <img src="assets/images/driver-blog-img.jpg" class="img-fluid d-block m-auto" alt="">
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                      <div class="r-drivers">
                        <div class="r-drivers-detail">
                          <div class="name">Robertho Garcia</div>
                          <div class="text">5 Years Experience</div>
                          <div class="icon">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                          </div>
                        </div>
                        <div class="drivers-img">
                          <img src="assets/images/driver-blog-img-2.jpg" class="img-fluid d-block m-auto" alt="">
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                      <div class="r-drivers">
                        <div class="r-drivers-detail">
                          <div class="name">Daniel Quaresma</div>
                          <div class="text">5 Years Experience</div>
                          <div class="icon">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                            <i class="fa fa-instagram" aria-hidden="true"></i>
                          </div>
                        </div>
                        <div class="drivers-img">
                          <img src="assets/images/driver-blog-img-3.jpg" class="img-fluid d-block m-auto" alt="">
                        </div>
                      </div>
                    </div>
                </div>
              </div>
              <div class="r-all-but text-center pt-5">
                <a href="#" class="btn btn-full">View All Drivers</a>
              </div>
            </div>
          </div>
        </section> -->
        <section id="r-best-vehicles">
          <div class="r-best-vehicles">
            <div class="r-sec-head r-accent-color r-sec-head-v">
              <span>OUR VEHICLES BRANDS & TYPE</span>
              <h2>Find Your <b>Best Vehicles.</b></h2>
            </div>
            <div class="container">
              <div class="row clearfix r-best-vehicle-list-outer mt-0">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-4 col-xs-12">
                  <div class="r-best-leftbar">
                    <ul class="pl-0 mb-0 r-best-vehicle-types">
                      <li data-tab="01"><span>All Manufacturer</span></li>
                      <li data-tab="02"><span>Honda</span></li>
                      <li class="r-best-vehicle-acitve" data-tab="03"><span>Mercedes Benz</span></li>
                      <li data-tab="04"><span>Toyota</span></li>
                      <li data-tab="05"><span>Volkswagen</span></li>
                      <li data-tab="06"><span>Audi</span></li>
                      <li data-tab="07"><span>Ferrari</span></li> 
                    </ul>
                  </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-8 col-xs-12">
                  <div class="r-best-tab-outer">
                    <div class="r-best-tab d-none" data-tab-attr="01">
                      <div class="r-best-vehicle-list clearfix row">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width: 100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/audi.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Toyota Avanza <span>RX</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width: 100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/bmw.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Chevrolet <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width: 100%; height: 200px; background-size: cover;" >
                              <!-- <img src="assets/images/kia.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Volkswagen <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width: 100%; height: 200px; background-size: cover;" >
                              <!-- <img src="assets/images/best-02.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Audi Sport <span>S8</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-03.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Bugatti Feyron <span>F2</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-04.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Mercedes Benz <span>R3</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="r-best-tab d-none" data-tab-attr="02">
                      <div class="r-best-vehicle-list clearfix row">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-01.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Volkswagen <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-02.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Audi Sport <span>S8</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div> 
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-05.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Toyota Avanza <span>RX</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-06.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Chevrolet <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="r-best-tab" data-tab-attr="03">
                      <div class="r-best-vehicle-list clearfix row">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-01.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Volkswagen <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-02.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Audi Sport <span>S8</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-03.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Bugatti Feyron <span>F2</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-04.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Mercedes Benz <span>R3</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-05.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Toyota Avanza <span>RX</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-06.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Chevrolet <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="r-best-tab d-none" data-tab-attr="04">
                      <div class="r-best-vehicle-list clearfix row">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-01.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Volkswagen <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-02.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Audi Sport <span>S8</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-03.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Bugatti Feyron <span>F2</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid">
                              <img src="assets/images/best-04.jpg" class="img-fluid d-block m-auto" alt="">
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Mercedes Benz <span>R3</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-05.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Toyota Avanza <span>RX</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg'); width:100%; height: 200px; background-size: cover;">
                              <!-- <img src="assets/images/best-06.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Chevrolet <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="r-best-tab d-none" data-tab-attr="05">
                      <div class="r-best-vehicle-list clearfix row">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg');">
                              <!-- <img src="assets/images/best-01.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Volkswagen <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg');">
                              <!-- <img src="assets/images/best-02.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Audi Sport <span>S8</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg');">
                              <!-- <img src="assets/images/best-03.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Bugatti Feyron <span>F2</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg');">
                              <!-- <img src="assets/images/best-04.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Mercedes Benz <span>R3</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg');">
                              <!-- <img src="assets/images/best-05.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Toyota Avanza <span>RX</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg');">
                              <!-- <img src="assets/images/best-06.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Chevrolet <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="r-best-tab d-none" data-tab-attr="06">
                      <div class="r-best-vehicle-list clearfix row">
                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12">
                          <div class="r-best-vehicle-single">
                            <a href="javaScript:void(0)" class="d-block m-auto img-fluid filter-car" style="background-image: url('assets/images/bmw.jpg');">
                              <!-- <img src="assets/images/best-01.jpg" class="img-fluid d-block m-auto" alt=""> -->
                            </a>
                            <div class="r-best-vehicle-content">
                              <span class="r-register-time">Registered 2016</span>
                              <a href="javaScript:void(0)" class="r-modal-name">Volkswagen <span>GTR</span></a>
                              <div class="clearfix">
                                <span class="r-average">$50/Day</span>
                                <span class="r-engine"><img src="assets/images/meter-icon.png" class="d-inline-block" alt="">2.3K CC</span>
                              </div>
                              <ul>
                                <li><i class="fa fa-cogs"></i><span>MANUAL</span></li>
                                <li><i class="fa fa-beer"></i><span>PETROL</span></li>
                                <li><i class="fa fa-road"></i><span>25K KM</span></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <div class="r-counter-section r-counter-with-bg m-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="r-counter-box">
                            <div class="r-counter-icon">
                                <img src="/img/manjakos/{{ $one['counters']['collections']['counter_icon_1'] }}" alt="" class="img-fluid">
                            </div>
                            <div class="r-counts" data-count="{{ $one['counters']['collections']['counter_title_1']['en'] }}">
                                <!-- 1.172.700 -->
                                <span class="r-count">0</span>
                            </div>
                            <span class="r-count-title"> {{ $one['counters']['collections']['counter_description_1']['en'] }} </span>
                        </div>
                    </div>

<div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="r-counter-box">
                            <div class="r-counter-icon">
                                <img src="/img/manjakos/{{ $one['counters']['collections']['counter_icon_2'] }}" alt="" class="img-fluid">
                            </div>
                            <div class="r-counts" data-count="{{ $one['counters']['collections']['counter_title_2']['en'] }}">
                                <!-- 1.172.700 -->
                                <span class="r-count">0</span>
                            </div>
                            <span class="r-count-title"> {{ $one['counters']['collections']['counter_description_2']['en'] }} </span>
                        </div>
                    </div>

<div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="r-counter-box">
                            <div class="r-counter-icon">
                                <img src="/img/manjakos/{{ $one['counters']['collections']['counter_icon_3'] }}" alt="" class="img-fluid">
                            </div>
                            <div class="r-counts" data-count="{{ $one['counters']['collections']['counter_title_3']['en'] }}">
                                <!-- 1.172.700 -->
                                <span class="r-count">0</span>
                            </div>
                            <span class="r-count-title"> {{ $one['counters']['collections']['counter_description_3']['en'] }} </span>
                        </div>
                    </div>

<div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="r-counter-box">
                            <div class="r-counter-icon">
                                <img src="/img/manjakos/{{ $one['counters']['collections']['counter_icon_4'] }}" alt="" class="img-fluid">
                            </div>
                            <div class="r-counts" data-count="{{ $one['counters']['collections']['counter_title_4']['en'] }}">
                                <!-- 1.172.700 -->
                                <span class="r-count">0</span>
                            </div>
                            <span class="r-count-title"> {{ $one['counters']['collections']['counter_description_4']['en'] }} </span>
                        </div>
                    </div>

                   
                </div>
            </div>
        </div>
        <section id="r-latest-news">
          <div class="r-latest-news">
            <div class="r-sec-head r-sec-head-b">
              <span>ARTICLES FROM BLOG</span>
              <h2>Our <b>Latest News.</b></h2>
            </div>
            <div class="container">
              <div class="owl-carousel r-latest-news-list" id="r-latest-news-slider">
                <div class="r-latest-news-single">
                  <a href="#" class="d-inline-block"><img src="assets/images/latest-news-01.jpg" class="img-fluid d-block m-auto" alt=""></a>
                  <div class="r-latest-news-content">
                    <span class="r-date">27 JUNE 2018</span>
                    <h4><a href="#">What To Do if Your Rental Car Has Met With An Accident.</a></h4>
                    <a href="#" class="r-read-more">READ ARTICLE</a>
                  </div>
                </div>
              
                <div class="r-latest-news-single">
                  <a href="#" class="d-inline-block"><img src="assets/images/latest-news-02.jpg" class="img-fluid d-block m-auto" alt=""></a>
                  <div class="r-latest-news-content">
                    <span class="r-date">27 JUNE 2018</span>
                    <h4><a href="#">What To Do if Your Rental Car Has Met With An Accident.</a></h4>
                    <a href="#" class="r-read-more">READ ARTICLE</a>
                  </div>
                </div>
              
                <div class="r-latest-news-single">
                  <a href="#" class="d-inline-block"><img src="assets/images/latest-news-03.jpg" class="img-fluid d-block m-auto" alt=""></a>
                  <div class="r-latest-news-content">
                    <span class="r-date">27 JUNE 2018</span>
                    <h4><a href="#">What To Do if Your Rental Car Has Met With An Accident.</a></h4>
                    <a href="#" class="r-read-more">READ ARTICLE</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="r-follow-us text-center">
              <img src="assets/images/instagram.png" class="img-fluid d-block m-auto" alt="">
              <span>Follow Our Instagram <a href="#">44Location</a></span>
            </div>
          </div>
        </section>
        <div id="r-gallery-part">
          <div class="r-gallery-part r-gallery-part-home pt-0 pb-0">
            <ul class="clearfix">
              <li>
                  <a href="assets/images/gallery-img01.jpg" data-rel="lightcase:myCollection">
                      <img src="assets/images/gallery-img01.jpg" class="d-block img-fluid" alt="">
                      <div class="gallery-hover">
                        <div class="gallery-text">
                          <div class="icon-gallery"><i class="fa fa-search" aria-hidden="true"></i></div>
                        </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="assets/images/gallery-img02.jpg" data-rel="lightcase:myCollection">
                      <img src="assets/images/gallery-img02.jpg" class="d-block img-fluid" alt="">
                      <div class="gallery-hover">
                        <div class="gallery-text">
                          <div class="icon-gallery"><i class="fa fa-search" aria-hidden="true"></i></div>
                        </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="assets/images/gallery-img03.jpg" data-rel="lightcase:myCollection">
                      <img src="assets/images/gallery-img03.jpg" class="d-block img-fluid" alt="">
                      <div class="gallery-hover">
                        <div class="gallery-text">
                          <div class="icon-gallery"><i class="fa fa-search" aria-hidden="true"></i></div>
                        </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="assets/images/gallery-img04.jpg" data-rel="lightcase:myCollection">
                      <img src="assets/images/gallery-img04.jpg" class="d-block img-fluid" alt="">
                      <div class="gallery-hover">
                        <div class="gallery-text">
                          <div class="icon-gallery"><i class="fa fa-search" aria-hidden="true"></i></div>
                        </div>
                      </div>
                  </a>
              </li>
              <li>
                  <a href="assets/images/gallery-img05.jpg" data-rel="lightcase:myCollection">
                      <img src="assets/images/gallery-img05.jpg" class="d-block img-fluid" alt="">
                      <div class="gallery-hover">
                        <div class="gallery-text">
                          <div class="icon-gallery"><i class="fa fa-search" aria-hidden="true"></i></div>
                        </div>
                      </div>
                  </a>
              </li>
            </ul>
          </div>
        </div>
        <footer>
          <div class="r-footer">
            <div class="container">
              <div class="row clearfix">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-align">
                  <div class="r-footer-block">
                    <img src="assets/images/logo-web-transparent-black.png" class="d-block img-fluid" alt="">
                   
                    
                  </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-align">
                  <div class="r-footer-block">
                    <div class="r-footer-widget r-footer-phone">
                      <span><i class="fa fa-phone"></i> CALL US ON LINE 1</span>
                      <h5>100.1212.2000</h5>
                    </div>
                    
                  </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-align">
                  <div class="r-footer-block">
                    <div class="r-footer-widget r-footer-phone">
                      <span><i class="fa fa-phone"></i> CALL US ON LINE 2</span>
                      <h5>100.2424.2000</h5>
                    </div>
                    
                  </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-12 footer-align">
                  <div class="r-footer-block">
                    <div class="r-footer-widget r-footer-map">
                      <a href="#"> <img src="assets/images/icon-footer-map.png" class="icon" alt=''/> 44Location on Map</a>
                    </div>
                    
                  </div>
                </div>
              </div>
              <div class="row clearfix r-footer-strip">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                 © 2019 Created by 
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                 <ul>
                   <li><a href="#"><i class="fa fa-facebook"></i>. <span>Facebook</span></a></li>
                   <li><a href="#"><i class="fa fa-twitter"></i>.<span>Twitter</span></a></li>
                   <li><a href="#"><i class="fa fa-instagram"></i>.<span>Instagram</span></a></li>
                 </ul>
                </div>
              </div>
            </div>
          </div>
        </footer>
      </div>
      <div id="r-to-top" class="r-to-top"><i class="fa fa-angle-up"></i></div>



@endsection