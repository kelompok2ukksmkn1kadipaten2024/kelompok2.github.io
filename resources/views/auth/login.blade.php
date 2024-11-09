@extends('layouts.auth')

@section('login')
<style>
    .login-box-body {
        background-color: rgba(255, 255, 255, 0.85);
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        backdrop-filter: blur(10px);
    }

    /* Menyesuaikan warna biru dengan gambar yang baru */
    .btn-primary {
        background-color: #007bff; /* Warna biru sesuai gambar */
        border-color: #007bff;
        transition: background-color 0.3s, border-color 0.3s;
    }

    .btn-primary:hover {
        background-color: #0062cc; /* Warna biru lebih gelap saat hover */
        border-color: #005cbf;
    }

    .form-control-feedback {
        color: #007bff; /* Icon input biru */
    }


    .login-box input[type="email"], .login-box input[type="password"] {
        border: 1px solid #007bff; /* Border biru di input */
        box-shadow: none;
        padding-right: 30px;
    }

    .glyphicon-envelope:before, .glyphicon-lock:before {
        color: #007bff; /* Warna icon di input */
    }

    /* Tampilan responsif */
    @media (max-width: 768px) {
        .login-box-body {
            padding: 20px;
        }
    }
</style>
<div class="login-box">


    <!-- /.login-logo -->
    <div class="login-box-body" style="background: url('{{ asset('img/back.jpg') }}')";>
        <div class="login-logo">
            <a href="{{ url('/') }}">
                <img src="{{ url($setting->path_logo) }}" alt="logo.png" width="100">
            </a>
        </div>

        <form action="{{ route('login') }}" method="post" class="form-login">
            @csrf
            <div class="form-group has-feedback @error('email') has-error @enderror">
                <input type="email" name="email" class="form-control" placeholder="Email" required value="{{ old('email') }}" autofocus>
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                @error('email')
                    <span class="help-block">Email/Password Wrong</span>
                @else
                <span class="help-block with-errors"></span>
                @enderror
            </div>
            <div class="form-group has-feedback @error('password') has-error @enderror">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                @error('password')
                    <span class="help-block">Email/Password Wrong</span>
                @else
                    <span class="help-block with-errors"></span>
                @enderror
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox" class="icheck-blue"> Remember Me
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
@endsection