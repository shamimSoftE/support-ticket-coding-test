@php
  $user = Auth::user();
@endphp
<header class="mb-2">

    <style>
        .m_active{
            background: #065932; border-radius: 5px;
        }
    </style>


    <!-- Main Navbar -->
    <nav class="navbar navbar-expand-md bg-success">
      <div class="container-fluid mx-4">
        <a class="navbar-brand" href="{{ url('/dashboard') }}">
          <img src="{{ asset('assets/uploads/logo/logo.png') }}" alt="Logo" width="100" height="30" class="d-inline-block text-white align-text-top"/>
        </a>
        <button class="navbar-toggler text-white" style="background-color: white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon text-white"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link mx-2 menu-hover text-white py-0 @if(request()->segment(1) == 'market-place') m_active @endif" aria-current="page" href="{{ url('/market-place') }}">Home</a>
            </li>

            <li class="nav-item">
              <a class="nav-link mx-2 menu-hover text-white py-0 @if(request()->segment(1) == 'products') m_active @endif" aria-current="page" href="{{ url('/products') }}">Products</a>
            </li>
            <li class="nav-item">
                <a class="nav-link mx-2 menu-hover text-white py-0 @if(request()->segment(1) == 'order-view') m_active @endif" aria-current="page" href="{{ url('/order-view') }}">Order</a>
               
            </li>
            <li class="nav-item">
                @switch($user->type)
                @case(2)
                    <a class="nav-link mx-2 menu-hover text-white py-0 @if(request()->segment(1) == 'support-panel') m_active @endif" aria-current="page" href="{{ url('/support-panel') }}">Support</a>
                    @break
                @default
                    <a class="nav-link menu-hover text-white py-0 @if(request()->segment(1) == 'support') m_active @endif" aria-current="page" href="{{ url('/support') }}" >Support</a>
            @endswitch

            </li>
            
          </ul>
        </div>
        <div class="m-0 p-0 text-white short-list d-lg-block d-none">
          <div class="d-flex last-menu m-0 p-0">
            <span class="my-0 me-2 p-0">{{ $user->name }}</span>

            @switch($user->type)
                @case(3)
                    <a href="{{ url('/admin-panel') }}" class="m-0 p-0 text-white signout">Admin Panel</a>
                    @break
                @case(2)
                    <a href="{{ url('/support-panel') }}" class="m-0 p-0 text-white signout">Support Panel</a>
                    @break
                @case(1)
                    <a href="{{ url('/seller-dashboard') }}" class="m-0 p-0 text-white signout">Dashboard</a>
                    @break

                @default

            @endswitch


          </div>
          

          <form method="POST" action="{{ route('logout') }}">
            @csrf
            <div class="d-flex last-menu m-0 p-0">
                <a href="{{ route('logout') }}" class="m-0 p-0 text-white signout"  onclick="event.preventDefault();
                this.closest('form').submit();">Sign out</a>
              </div>
          </form>
        </div>
      </div>
    </nav>

    <!-- Sub Nav -->
  </header>
