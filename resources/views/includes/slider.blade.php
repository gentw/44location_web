<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <div ng-if="includes.global">
    <div class="carousel-inner">
      <div class="carousel-item carousel_mod" data-ng-class="{active : $first}" ng-repeat="slider in includes.global.many[0]['slider']">
        <div class="overlay_slider_top"></div>
        <img ng-src="/img/manjakos/<%slider['collections']['background']%>">
        <div class="carousel-caption">
          <h5 class="wow fadeInUp title" data-wow-duration="1s" data-wow-delay=".4s">
            <%slider['collections']['title']['en']%></h5>
          <p class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s" ng-bind-html="slider['collections']['description']['en']"></p>
          <a href="/contact">
            <button data-hover="click me!" class="default_btn wow fadeInUp" data-wow-delay="0.6s">
              <div>Learn more</div>
            </button>
          </a>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span><i class="fas fa-arrow-left"></i></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span><i class="fas fa-arrow-right"></i></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>