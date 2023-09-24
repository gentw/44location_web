@extends('index')
@section('title_and_meta')

@endsection
@section('content')
  <div class="r-wrapper">
     
        <div id="r-welcome-msg" class="r-welcome-msg-part">
          <div class="container">
            <div class="row clearfix">
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-6">
                <div class="r-welcome-msg">
                  <span>120+ CARS TYPE & BRANDS</span>
                  Welcome to <b>44Location.</b>
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-6">
                <div class="r-welcome-text">
                  {!!$one['infos']['collections']['about_description_1']['en']!!}
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="r-video-banner">
          <div class="container">
              <div class="row clearfix">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <img src="/img/manjakos/{!!$one['infos']['collections']['about_cover']!!}" alt="">
                </div>
              </div>
          </div>
        </div>

        <div id="r-video-msg" class="r-video-msg-part">
          <div class="container">
            <div class="row clearfix">
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-6">
                <div class="r-welcome-msg">
                  {!!$one['infos']['collections']['about_description_2']['en']!!}
                </div>
              </div>
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-6">
                <div class="r-video-right">
                  <em>{!!$one['infos']['collections']['about_cover_description']['en']!!}</em>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div id="r-insurance-part" class="r-insurance-part">
          <div class="container">
            <div class="row clearfix">
              <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-12" ng-repeat="s in includes.global.many[4]['services']">
                <div class="r-insurance-box">
                  <div class="icon">
                    <img src="/img/manjakos/<%s['collections']['service_icon']%>" alt="" class="img-fluid" />
                  </div>
                  <div class="r-head"><%s['collections']['service_title']['en']%></div>
                 <%s['collections']['service_description']['en']%>
                </div>
              </div>
              
            </div>
            <div class="r-insurance-btn-part">
              <a href="" title="" class="btn-primary">VIEW ALL VEHICLES</a>
              <a href="" title="" class="btn-default">RESERVED CAR</a>
            </div>
          </div>
        </div>

        <div class="r-counter-section">
          <div class="container">
              <div class="row">
                  <div class="col-lg-3 col-md-4 col-sm-6">
                      <div class="r-counter-box">
                          <div class="r-counter-icon">
                              <img src="assets/images/icon-happy-customer.png" alt="" class="img-fluid" />
                          </div>
                          <div class="r-counts">
                              1.172.700
                          </div>
                          <span class="r-count-title"> HAPPY CUSTOMERS </span>
                      </div>
                  </div>

                  <div class="col-lg-3 col-md-4 col-sm-6">
                      <div class="r-counter-box">
                          <div class="r-counter-icon">
                              <img src="assets/images/icon-cars-count.png" alt="" class="img-fluid" />
                          </div>
                          <div class="r-counts">
                              2.450
                          </div>
                          <span class="r-count-title"> CARS IN GARAGE </span>
                      </div>
                  </div>

                  <div class="col-lg-3 col-md-4 col-sm-6">
                      <div class="r-counter-box">
                          <div class="r-counter-icon">
                              <img src="assets/images/icon-total-km.png" alt="" class="img-fluid" />
                          </div>
                          <div class="r-counts">
                              1.211.100
                          </div>
                          <span class="r-count-title"> TOTAL KILOMETER/MIL </span>
                      </div>
                  </div>

                  <div class="col-lg-3 col-md-4 col-sm-6">
                      <div class="r-counter-box">
                          <div class="r-counter-icon">
                              <img src="assets/images/icon-car-center.png" alt="" class="img-fluid" />
                          </div>
                          <div class="r-counts">
                              47.250
                          </div>
                          <span class="r-count-title"> CAR CENTER SOLUTIONS </span>
                      </div>
                  </div>
              </div>
          </div>
        </div>

       
        <section id="r-get-in-touch">
          <div class="r-get-in-touch">
            <div class="container">
              <div class="r-get-header">
                <span>CONTACT US NOW</span>
                <h2>Keep <b>In Touch.</b></h2>
              </div>
              <div class="r-get-form">
                <form action="#">
                  <div class="clearfix">
                    <div class="form-group"><input type="text" placeholder="User name"></div>
                    <div class="form-group"><input type="email" placeholder="Email Address"></div>
                  </div>
                  <div class="form-group"><input type="email" placeholder="Title Message"></div>
                  <div class="form-group">
                    <textarea placeholder="Message"></textarea>
                  </div>
                  <div class="text-center">
                    <button class="btn btn-full">SEND MESSAGE NOW</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </section>
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
                      <span><i class="fa fa-phone"></i> info@44location.ch</span>
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
                 ©2018 Created by 
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