@extends('index')
@section('title_and_meta')

@endsection
@section('content')

<section class="cover_general" style="background-image: url({{URL::to('/img/manjakos/' . $one['our_header']['collections']['background'])}})">
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<h2 class="wow fadeInUp" data-wow-delay="0.4s" style="text-align: center;">{{$one['our_header']['collections']['title']['en']}}</h2>
				<div class="wow fadeInUp" data-wow-delay="0.4s">{!!$one['our_header']['collections']['description']['en']!!}</div>
				<button data-hover="click me!" class="default_btn wow fadeInUp" data-wow-delay="0.6s">
					<div>Learn More</div>
				</button>
			</div>
		</div>
	</div>
</section>
<section class="home_third guarantee_first">
	<div class="container">
		<div class="row">
			<div class="video_holder col-md-6">
				<img src="{{URL::to('/img/manjakos/' . $one['guar_nd']['collections']['image'])}}" alt="">
			</div>
			<div class="textholder_th col-md-6">
				<h3 class="title">{{$one['guar_nd']['collections']['title']['en']}}</h3>
				<p>{!!$one['guar_nd']['collections']['description']['en']!!}</p>
			</div>
		</div>
	</div>
</section>
<section class="guar_nd">
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<h3 class="title wow fadeInUp title" data-wow-duration="1s" data-wow-delay=".2s">Our Pledge To You</h3>
			</div>
			<div class="col-md-7">
				<p class=" wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. </p>
			</div>
		</div>
		<div class="row">			
            <div class="col-md-4 small_padding-lr" ng-repeat="slider in includes.global.many[4]['our_pledge']">
                <div class="gar_cards wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                    <img ng-src="/img/manjakos/<%slider['collections']['image']%>">
                    <h5 class="title"><%slider['collections']['title']['en']%></h5>
                    <p ng-bind-html="slider['collections']['description']['en']"></p>
                </div>
            </div>
		</div>
	</div>
</section>

@endsection