<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    
    <link rel="stylesheet" href="../trangchu/css/main.css">
    <link rel="stylesheet" href="../trangchu/css/user.css">
    <base href="{{asset('')}}">
    <script src="https://kit.fontawesome.com/f80801c97f.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,500;1,700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title>{!! $name !!}</title>
   
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0&appId=1787837751383296&autoLogAppEvents=1"
        nonce="uFkwjoed"></script>
</head>
<body>
    <div class="wrapper">
        @include('layout.header')
       @include('layout.menu')

        <div class="container mt-5 mb-2 pt-4">
            <section class="section__user">
                <div class="container row">
                    <div class="col-lg-2 col-xl-2 col-md-12 col-sm-12 user__left">
                        <div class="img__user">
                            <img src="upload/avatar/{!! Auth::user()->image !!}" alt="">
                        </div>
                        <a class="mt-2 btn btn-outline-success  " href="/trangcanhan/editimg"><i class="fas fa-chevron-right"></i>ĐỔI ẢNH</a>
                        <span class="mb-3 text-white mt-1">{!! Auth::user()->username !!}</span>
                       
                        <div class="user__menu">
                            <ul>
                                @if (Auth::user()->role > 0)
                                <li><a href="/admin">Vào trang quản lý</a></li>
                                <li><a href="/trangcanhan">Xem thông tin</a></li>
                                <li><a href="admin/news/create">Thêm bài viết</a></li>
                                @endif
                                <li><a href="/trangcanhan/edit">Đổi thông tin</a></li>
                                <li><a href="/trangcanhan/changepassword">Đổi mật khẩu</a></li>
                                <li><a href="/logout">Đăng xuất</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-10 col-xl-10 col-md-12 col-sm-12">
                        @yield('content')
                    </div>
                </div>
            </section>
        </div>
        @include('layout.footer')

    </div>
</body>
<script src="trangchu/js/main.js"></script>
@yield('script')
</html>