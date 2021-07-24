<div class="col-sm-4 col-md-4">
    <div class="thumbnail">
        <div class="caption">
            <h3><a href="news/{{ $new->id }}">{{ $new->title }}</a></h3>
            <p>{{ $new->content }}</p>
            <p>{{ $new->description }}</p>
            <p>{{ 'Author:' . $new->author }}</p>
            <p>{{ 'Tag:' . $new->tag }}</p>
        <div class="labels">
            @if($new->isFavorit())
                <span class="badge badge-success">Это избранная новость</span>
            @endif
        </div>
    </div>
</div>
</div>
