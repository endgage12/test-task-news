<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@yield('title')</title>

    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <script
        src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
        crossorigin="anonymous"></script>
    <script src="/js/bootstrap.min.js"></script>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="topbar">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="{{ route('index') }}">Главная страница</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="{{ route('news') }}">Все новости</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                @guest
                    <li><a href="{{ route('login') }}">Авторизироваться</a></li>
                @endguest

                @auth
                        <li><a href="{{ route('dashboard') }}">В профиль</a></li>
                    <li><a href="{{ route('get-logout') }}">Выйти из аккаунта</a></li>
                @else
{{--                    <li><a href="{{ route('get-logout') }}">Выйти из аккаунта</a></li>--}}
                @endauth
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="starter-template">
        @if(session()->has('success'))
            <p class="alert alert-success">{{ session()->get('success') }}</p>
        @endif
        @if(session()->has('warning'))
            <p class="alert alert-warning">{{ session()->get('warning') }}</p>
        @endif
        @yield('content')
    </div>
</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <a href="{{ route('news') }}">Все новости</a>
            </div>
        </div>
    </div>
</footer>


</body>
</html>
