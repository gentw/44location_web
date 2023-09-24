@extends('index')
@section('title_and_meta')

@endsection
@section('content')
<section class="cover_general" style="background-image: url({{URL::to('/img/manjakos/' . $one['header-citizen']['collections']['background'])}})">
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<h2 class="wow fadeInUp" data-wow-delay="0.4s" style="text-align: center;">{{$one['header-citizen']['collections']['title']['en']}}</h2>
				<div class="wow fadeInUp" data-wow-delay="0.4s">{!!$one['header-citizen']['collections']['description']['en']!!}</div>
			</div>
			<div class="col-md-12">
				<div class="filterholder">
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle select_box" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Reason for Citizenship
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<ul id="checkCategoryArray">
								<li class="category"><input class="categoryCheck" type="radio" name="chk[]" value="55">  Visa Free Travel</li>
								<li class="category"><input class="categoryCheck" type="radio" name="chk[]" value="59">  Plan B/ Family Security</li>
								<li class="category"><input class="categoryCheck" type="radio" name="chk[]" value="60">  International Banking & Business</li>
								<li class="category"><input class="categoryCheck" type="radio" name="chk[]" value="54"> Tax Efficency</li>
								<li class="category"><input class="categoryCheck" type="radio" name="chk[]" value="55"> Access to US Residency</li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle select_box" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							Budget
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<ul id="priceArray">
								<li class="price"><input class="priceCheck" type="checkbox" value="100.000-200.000"> $100,000 - $200,000</li>
								<li class="price"><input class="priceCheck" type="checkbox" value="200.000-350.000"> $200,000 - $350,000</li>
								<li class="price"><input class="priceCheck" type="checkbox" value="350.000-1.000.000"> $350,000 - $1,000,000</li>
								<li class="price"><input class="priceCheck" type="checkbox" value="1.000.000-2.000.000"> $1,000,000 - $2,000,000</li>
								<li class="price"><input class="priceCheck" type="checkbox" value="2.000.000-5.000.000"> $2,000,000 - $5,000,000</li>
							</ul>
						</div>
					</div>
					<button class="search_filter">Search</button>
				</div>
			</div>
			<section class="leverage_agile_section get_estimate_slim_citiz">
				<div class="container">
					<div class="row">
						<div>
							<h6>Get Your <br>
								Immediate Estemate </h6>
							<p>Leverage agile frameworks to provide a robust synopsis for high <br>level overviews.</p>
						</div>
						<div>
							<a href="/calculator">
								<button data-hover="" class="default_btn default_btn_dark wow fadeInUp" data-wow-delay="0.3s">
									<div>Price Calculator</div>
								</button>
							</a>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</section>
<section class="program_holder">
	<div class="container">
		<h2 class="results">Results.. lorem ipsum...</h2>
		<div id="programs" class="row">
			
		</div>
	</div>
</section>
<section class="home_third guarantee_first">
	<div class="container">
		<div class="row">
			<div class="video_holder col-md-6">
				<img src="{{URL::to('/img/manjakos/' . $one['citizenship-third']['collections']['image'])}}" alt="">
			</div>
			<div class="textholder_th col-md-6">
				<h3 class="title">{{$one['citizenship-third']['collections']['title']['en']}}</h3>
				<p>{!!$one['citizenship-third']['collections']['description']['en']!!}</p>
			</div>
		</div>
	</div>
</section>
<section class="section_frequently">
	<div class="container">
		<div class="row">
			<h6>Frequently Asked <br>Questions</h6>
			<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. <br>Iterative approaches</p>
		</div>
		<div class="row">

			<div class="wrapper center-block wrapper_collapse_cizi">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default question_panel_default" ng-repeat="program_repeat in includes.global.many[7]['frequently_asked'] | limitTo : 3">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#" href="#collapse<%program_repeat['id']%>" aria-expanded="true" aria-controls="collapseOne" class="collapse_button">
									<%program_repeat['collections']['title']['en']%>
								</a>
							</h4>
						</div>
						<div id="collapse<%program_repeat['id']%>" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body" ng-bind-html="program_repeat['collections']['description']['en']"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="leverage_agile_section">
	<div class="container">
		<div class="row" style="margin-bottom: 30px;">
			<h6>Leverage Agile<br>
				Frameworks To Provide </h6>
			<p>Leverage agile frameworks to provide a robust synopsis for high <br>level overviews.</p>
			<button data-hover="click me!" class="default_btn default_btn_dark wow fadeInUp" data-wow-delay="0.3s">
				<div>Get A Free Quote</div>
			</button>
		</div>
	</div>
	<div class="container-fluid leverage_double">
		<div class="row">
			<div class="col-md-6 no_padding">
				<img src="{{URL::to('/img/manjakos/' . $one['what_you_can']['collections']['image'])}}" alt="" class="img-fluid">
			</div>
			<div class="col-md-6 text_holder wow fadeInUp " data-wow-duration="1s" data-wow-delay=".2s">
				<h5 class="wow fadeInUp" data-wow-delay="0.4s">{{$one['what_you_can']['collections']['title']['en']}}</h5>
				<p>{!!$one['what_you_can']['collections']['description']['en']!!}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 text_holder wow fadeInUp " data-wow-duration="1s" data-wow-delay=".2s">
				<h5 class="wow fadeInUp" data-wow-delay="0.4s">{{$one['what_you_cant']['collections']['title']['en']}}</h5>
				<p>{!!$one['what_you_cant']['collections']['description']['en']!!}</p>
			</div>
			<div class="col-md-6 no_padding">
				<img src="{{URL::to('/img/manjakos/' . $one['what_you_cant']['collections']['image'])}}" alt="" class="img-fluid">
			</div>
		</div>
	</div>
</section>
@endsection