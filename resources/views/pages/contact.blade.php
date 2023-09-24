@extends('index')
@section('title_and_meta')

@endsection
@section('content')
 <div class="r-wrapper">
       
        <section id="r-contact-part" class="r-contact-part">
          <div class="container clearfix">
            <div class="contact-head">
              <span>OUR OFFICE</span>
              <h2>Contact <b>44Location</b> for<br> More Information. </h2>
            </div>

            <div class="row clearfix">
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="r-contact-address">
                  <div class="head">Main Office</div>
                  <div class="r-contact-img"><img src="assets/images/contact-img01.jpg" class="img-fluid d-block m-auto" alt=""></div>
                  <div class="address address-cnt"><i class="fa fa-map-marker"></i>Lausane</div>
                  <div class="call address-cnt"><i class="fa fa-phone"></i><b>+100</b>-1212-2000</div>
                  <div class="mail address-cnt"><i class="fa fa-envelope"></i>info@44Location.ch</div>
                </div>
              </div>

              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="r-contact-address">
                  <div class="head">Main Office</div>
                  <div class="r-contact-img"><img src="assets/images/contact-img01.jpg" class="img-fluid d-block m-auto" alt=""></div>
                  <div class="address address-cnt"><i class="fa fa-map-marker"></i>Lausane</div>
                  <div class="call address-cnt"><i class="fa fa-phone"></i><b>+100</b>-1212-2000</div>
                  <div class="mail address-cnt"><i class="fa fa-envelope"></i>info@44Location.ch</div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section id="r-get-in-touch">
          <div class="r-get-in-touch">
            <div class="container">
              <div class="r-get-header">
                <span>CONTACT US NOW</span>
                <h2>Keep <b>In Touch.</b></h2>
              </div>
              <div class="r-get-form"> 
                  <div class="clearfix">
                    <div class="form-group"><input required="" name="userName"  id="userName" type="text" placeholder="User name"></div>
                    <div class="form-group"><input required="" name="userEmail" id="userEmail" type="email" placeholder="Email Address"></div>
                  </div>
                  <div class="form-group"><input type="text" required="" name="subject" id="subject" placeholder="Title Message"></div>
                  <div class="form-group">
                    <textarea placeholder="Message" name="content" required="" id="content"></textarea>
                  </div>
                  <div class="text-center">
                    <button onClick="sendContact();" class="btn btn-full" >SEND MESSAGE NOW</button>
                  </div> 
                <div class="mt-4 text-uppercase text-white text-center" id="mail-status"></div>
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
                    <div class="r-footer-widget r-footer-phone" style="margin-right: 20px;">
                      <span><i class="fa fa-phone"></i> e-mail</span>
                      <h5>info@44location</h5>
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
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                 © 2019 Created by 
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
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