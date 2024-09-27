@extends('auth.login_main')

@section('auth_title', 'Register Page')


@section('auth_content')

<div class="p-5 shadow-lg">
    <h3 class="text-center fw-bold mb-5">Create An Account!</h3>
    <form method="POST" action="{{ route('register') }}">
        @csrf
        <div class="input-group mb-3 mt-0">
            <input type="text" placeholder=" Username" name="username" value="{{ old('username') }}" class="form-control border shadow-none border-1 @error('username') is-invalid @enderror" />
        </div>
        @error('username')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror

        <div class="input-group mb-3 mt-0">
            <input type="password" placeholder=" Password" name="password" class="form-control shadow-none border border-1 @error('password') is-invalid @enderror"/>
        </div>
        @error('password')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror

        <div class="input-group mb-3 mt-0">
            <input type="password" placeholder="Confirm Password" name="password_confirmation" class="form-control shadow-none border border-1 @error('password_confirmation') is-invalid @enderror"/>
        </div>
        @error('password_confirmation')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror

        <div class="text-center px-5">
            <button type="submit" class="btn btn-outline-success mt-3 w-100 py-2 fw-semibold">
                Sign Up
            </button>
            <br>
            <br>
            <span class="pt-2">Already have an account ? <a href="{{ url('/login') }}" class="text-decoration-none py-2"> Login</a></span >
        </div>
    </form>
  </div>

@endsection
