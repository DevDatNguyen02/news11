<!doctype html>
<html lang="en">
  <head>
  	<title>Login 04</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <base href="{{ asset('') }}">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="loginform/css/style.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">User</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(loginform/images/bg-1.jpg);"></div>
						<div class="login-wrap p-4 p-md-5">
							<div class="d-block">
								<div class="w-100">
									<h3 class="mb-4">Sign Up</h3>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
								<form action="/signup"  method="POST">
									@csrf
									@if( count($errors) > 0 )
									<div class="alert alert-danger">
									@foreach($errors->all() as $arr)
										{{ $arr }}<br>
									@endforeach
									</div>
									@endif
									@if (session('thongbao'))
									<div class="alert alert-success">
										{{ session('thongbao') }}
									</div>
									@endif
									<div class="form-group mb-3">
										<label class="label" for="name">Username</label>
										<input type="text" name="username" class="form-control" placeholder="Username" required>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="name">Họ và tên</label>
										<input type="text" name="name" class="form-control" placeholder="Name" required>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="name">Email</label>
										<input type="email" name="email" class="form-control" placeholder="Email" required>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="password">Password</label>
										<input type="password" name="password" class="form-control" placeholder="Password" required>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="password">Repeat password</label>
										<input type="password" name="passwordagain" class="form-control" placeholder="Password" required>
									</div>
									<div class="form-group">
										<button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign Up</button>
									</div>
									<div class="form-group d-md-flex">
										<div class="w-50 text-left">
											<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
												<input type="checkbox" checked>
												<span class="checkmark"></span>
											</label>
										</div>
									</div>
								</form>
								<p class="text-center">You is a member? <a data-toggle="tab" href="/login">Login</a></p>
							</div>
		        		</div>
		      		</div>
				</div>
			</div>
		</div>
	</section>

	<script src="loginform/js/jquery.min.js"></script>
  <script src="loginform/js/popper.js"></script>
  <script src="loginform/js/bootstrap.min.js"></script>
  <script src="loginform/js/main.js"></script>

	</body>
</html>

