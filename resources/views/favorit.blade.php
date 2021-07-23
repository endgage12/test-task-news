<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
{{--    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">--}}

</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <form method="GET" action="{{ route('search') }}">
                <div class="form-row">
                    <div class="form-group col-md-10">
                        <input type="text" class="form-control" id="query__" name="query__" placeholder="Search...">
                    </div>
                    <div class="form-group col-md-2">
                        <button type="submit" class="btn btn-primary btn-block">Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<a href="{{ route('news') }}">Все новости</a>

{{-- Передаем на эту страницу массив news favorit--}}
    @foreach($news as $new)
        @include('layouts.new', compact('new'))
    @endforeach
</body>
</html>
