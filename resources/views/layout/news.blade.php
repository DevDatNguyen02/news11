
<aside class="menu__news--bottom">
    <h2 class="title__menu--left">
        Bài viết nổi bật
    </h2>
    <div class="list__items--news">
        @foreach ($baivietnoibat -> sortByDesc('id') as $value)
        <div class="item__news">
            <div class="image__news">
                <a href="{{ route('news.detail',$value['id']) }}">
                    <img src="upload/news/{!! $value['image'] !!}">
                </a>
            </div>
            <div class="content__news">
                <a class="blog__title blog__title--hover" href="{{ route('news.detail',$value['id']) }}">
                    {!! $value['title'] !!}
                </a>
            </div>
        </div>
        @endforeach
    </div>
</aside>