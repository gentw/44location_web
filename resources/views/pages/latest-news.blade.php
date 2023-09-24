@extends('index')
@section('title_and_meta')

@endsection
@section('content')

<section class="cover_general" style="background-image: url({{URL::to('/img/manjakos/' . $one['news_header']['collections']['background'])}})">
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<h2 class="wow fadeInUp" data-wow-delay="0.4s" style="text-align: center;">{{$one['news_header']['collections']['title']['en']}}</h2>
				<div class="wow fadeInUp" data-wow-delay="0.4s">{!!$one['news_header']['collections']['description']['en']!!}</div>
				<button data-hover="click me!" class="default_btn wow fadeInUp" data-wow-delay="0.6s">
					<div>Learn More</div>
				</button>
			</div>
		</div>
	</div>
</section>

<section class="repeat_news">
	<div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="title">Our Award <br>Winning Team</h2>
            </div>
            <div class="col-md-6">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
            </div>
        </div>
		<div class="row">
		<div class="news_cards col-md-6" ng-repeat="enets_saml in includes.global.many[5]['news']">
			<img ng-src="/img/manjakos/<%enets_saml['collections']['image']%>" class="wow fadeInUp" data-wow-delay="0.6s">
			<div class="blogTxt">
				<h6 class="wow fadeInUp" data-wow-delay="0.2s"><%enets_saml['collections']['title']['en']%></h6>
				<p ng-bind-html="enets_saml['collections']['description']['en']" class="wow fadeInUp" data-wow-delay="0.4s"></p>  
				<a href="/news/<%enets_saml.id%>/<%enets_saml.slugable.en%>">
					<div class="default_button default_button_white">
						<span>Read More <i class="fas fa-angle-right"></i></span>
					</div>
				</a>
			</div>
		</div>
		<div class="news_cards col-md-6" ng-repeat="enets_saml in includes.global.many[5]['news']">
			<img ng-src="/img/manjakos/<%enets_saml['collections']['image']%>" class="wow fadeInUp" data-wow-delay="0.6s">
			<div class="blogTxt">
				<h6 class="wow fadeInUp" data-wow-delay="0.2s"><%enets_saml['collections']['title']['en']%></h6>
				<p ng-bind-html="enets_saml['collections']['description']['en']" class="wow fadeInUp" data-wow-delay="0.4s"></p>  
				<a href="/news/<%enets_saml.id%>/<%enets_saml.slugable.en%>">
					<div class="default_button default_button_white">
						<span>Read More <i class="fas fa-angle-right"></i></span>
					</div>
				</a>
			</div>
		</div>
		<div class="news_cards col-md-6" ng-repeat="enets_saml in includes.global.many[5]['news']">
			<img ng-src="/img/manjakos/<%enets_saml['collections']['image']%>" class="wow fadeInUp" data-wow-delay="0.6s">
			<div class="blogTxt">
				<h6 class="wow fadeInUp" data-wow-delay="0.2s"><%enets_saml['collections']['title']['en']%></h6>
				<p ng-bind-html="enets_saml['collections']['description']['en']" class="wow fadeInUp" data-wow-delay="0.4s"></p>  
				<a href="/news/<%enets_saml.id%>/<%enets_saml.slugable.en%>">
					<div class="default_button default_button_white">
						<span>Read More <i class="fas fa-angle-right"></i></span>
					</div>
				</a>
			</div>
		</div>
		<div class="news_cards col-md-6" ng-repeat="enets_saml in includes.global.many[5]['news']">
			<img ng-src="/img/manjakos/<%enets_saml['collections']['image']%>" class="wow fadeInUp" data-wow-delay="0.6s">
			<div class="blogTxt">
				<h6 class="wow fadeInUp" data-wow-delay="0.2s"><%enets_saml['collections']['title']['en']%></h6>
				<p ng-bind-html="enets_saml['collections']['description']['en']" class="wow fadeInUp" data-wow-delay="0.4s"></p>  
				<a href="/news/<%enets_saml.id%>/<%enets_saml.slugable.en%>">
					<div class="default_button default_button_white">
						<span>Read More <i class="fas fa-angle-right"></i></span>
					</div>
				</a>
			</div>
		</div>
		<div class="news_cards col-md-6" ng-repeat="enets_saml in includes.global.many[5]['news']">
			<img ng-src="/img/manjakos/<%enets_saml['collections']['image']%>" class="wow fadeInUp" data-wow-delay="0.6s">
			<div class="blogTxt">
				<h6 class="wow fadeInUp" data-wow-delay="0.2s"><%enets_saml['collections']['title']['en']%></h6>
				<p ng-bind-html="enets_saml['collections']['description']['en']" class="wow fadeInUp" data-wow-delay="0.4s"></p>  
				<a href="/news/<%enets_saml.id%>/<%enets_saml.slugable.en%>">
					<div class="default_button default_button_white">
						<span>Read More <i class="fas fa-angle-right"></i></span>
					</div>
				</a>
			</div>
		</div>
		</div>
	</div>
</section>

@endsection