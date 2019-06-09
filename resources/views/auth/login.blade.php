<!DOCTYPE html>
<html lang="en">
<head>
	<title>SIPER | LOGIN</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{ asset('template/login/vendor/animate/animate.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('template/login/css/util.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('template/login/css/main.css') }}">
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
                <form class="login100-form validate-form" method="POST" action="{{ route('login') }}">
                    @csrf
					<span class="login100-form-title p-b-43">
						Sistem Informasi Perpustakaan Sekolah
					</span>
					<span class="login100-form-title p-b-30">
						Login
					</span>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="email" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="password">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('/images/lib3.jpg');">
				</div>
			</div>
		</div>
	</div>
<!--===============================================================================================-->
	<script src="{{ asset('template/login/vendor/jquery/jquery-3.2.1.min.js') }}"></script>
	<script src="{{ asset('template/login/vendor/bootstrap/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('template/login/js/main.js') }}"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        $(function(){
            var error = '{{ $errors->first() }}'
            if (error) {
               swal("Login Failed!", error, "error");
            }
            
        })
    </script>
</body>
</html>
