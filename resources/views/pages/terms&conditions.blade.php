@extends('index')
@section('title_and_meta')

@endsection
@section('content')

<section class="conditions">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="wow fadeInUp" data-wow-delay="0.4s">{!!$one['terms_a']['collections']['description']['en']!!}</div>
			</div>
		</div>
	</div>
</section>

@endsection