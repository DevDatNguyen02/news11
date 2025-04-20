<h1>Trang Chủ</h1>
<form action="/search" method="post">
            @csrf
            @if (Auth::check())
            <span class="btn">
                <a href="/trangcanhan" class="text-white"><i class="fas fa-user mr-2"> {!! Auth::user()->name !!}</i> </a>
            </span>
            @else
            <span class="btn">
                <a href="/login" class="text-white"><i class="fas fa-user mr-2"></i> </a>
            </span>
            @endif
</form>