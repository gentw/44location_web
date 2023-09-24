<!doctype html>
<html lang="{{ app()->getLocale() }}" ng-app="eg_dev">

<head>
    <title>44Location</title>
    <meta charset="utf-8">
    <link rel="icon" href="/img/Group 175.png">
    <meta name="theme-color" content="#272F34" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{url('assets/css/plugins/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('assets/css/main.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('assets/css/plugins/color-08.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,700|Roboto:300&display=swap" rel="stylesheet">

    @yield('title_and_meta')
</head>

<body ng-controller="HeaderCtrl">
    <div class="header">
        @include('navbar.navbar')
    </div>
    <div>
        @yield('content')
    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.6.5/angular-sanitize.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.1/moment.min.js"></script>
    <script src="{{url('assets/js/jquery.min.js')}}"></script>
    <script src="{{url('assets/js/appear.js')}}"></script>
    <script src="{{url('assets/js/jquery.easing.min.js')}}"></script>
    <script src="{{url('assets/js/counter.min.js')}}"></script>
    <script src="{{url('assets/js/tether.min.js')}}"></script>
    <script src="{{url('assets/js/bootstrap.min.js')}}"></script>
    <script src="{{url('assets/js/owl.carousel.min.js')}}"></script>
    <script src="{{url('assets/js/lightcase.js')}}"></script>
    <script src="{{url('assets/js/map.js')}}"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhBiQ6tU3cSikkas5vgpSnpo5IcZ2sAtU&callback=initMap"></script>
    <script src="{{url('assets/js/custom.js')}}"></script>
    
    <script src="{{url('js/app.js')}}"></script>
    <script src="/js/notify.js"></script>
    <script src="/js/jquery.countup.js"></script>	
    <script src="/js/slider.min.js"></script>

</body>



</html>