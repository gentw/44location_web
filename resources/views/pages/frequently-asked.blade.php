@extends('index')
@section('title_and_meta')

@endsection
@section('content')
<section class="section_frequently" style="margin: 10% 0px;">
	<div class="container">
		<div class="row">
			<h6>Frequently Asked <br>Questions</h6>
			<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. <br>Iterative approaches</p>
		</div>
		<div class="row">
			<div class="wrapper center-block wrapper_collapse_cizi">
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default question_panel_default" ng-repeat="program_repeat in includes.global.many[7]['frequently_asked']">
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
@endsection