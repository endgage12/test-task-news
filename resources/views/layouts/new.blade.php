<div class="col-sm-6 col-md-3">
    <div class="thumbnail">
        <div class="caption">
            <h3>{{ 'Title: '. $new->title }}</h3>
            <p>{{ 'Content:' . $new->content }}</p>
            <p>{{ 'Description:' . $new->description }}</p>
            <p>{{ 'Author:' . $new->author }}</p>
            <p>{{ 'Tag:' . $new->tag }}</p>
        </div>
        <div class="labels">
            @if($new->isFavorit())
                <span class="badge badge-success">Это избранная новость</span>
            @endif
        </div>
    </div>
</div>
