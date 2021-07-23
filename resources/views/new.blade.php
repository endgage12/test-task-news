<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div class="col-sm-6 col-md-3">
    <div class="thumbnail">
        <div class="caption">
            <h3>{{ 'Title: '. $news->title }}</h3>
            <p>{{ 'Content:' . $news->content }}</p>
            <p>{{ 'Description:' . $news->description }}</p>
            <p>{{ 'Author:' . $news->author }}</p>
            <p>{{ 'Tag:' . $news->tag }}</p>
        </div>
    </div>
</div>
</body>
</html>
