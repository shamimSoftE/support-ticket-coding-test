@extends('FrontEnd.main')

@section('title', 'Admin-Panel')

@push('style')
<style>
    .c_active{ color: #ffffff; background-color: #198754; }
    .c_text{font-size: 12px!important; text-decoration: none!important; }
    .cc_body {min-height: 115px!important; }
    table, td { font-size: 12px; }
</style>
@endpush

@section('content')

    <div class="row g-2 justify-content-between mt-5 mb-3 mx-0 px-5">
        <!-- left side -->
        <div class="col-xl-3 col-xxl-3 col-lg-3 col-md-3 text-start"></div>
        <div class="col-xl-6 col-xxl-6 col-lg-6 col-md-6 text-start">
            <div class="shadow rounded my-5 ">
                <div class="text-center py-2 rounded-top @if(request()->segment(1) == 'admin-panel') c_active @endif">
                    <a href="{{ url('/admin-panel') }}" class="text-decoration-none text-white text-dark ">Welcome {{ auth()->user()->name }}</a>
                </div>
                
                
                <div class="list-group rounded-0 border-0 text-center p-5"> 
                    <a href="{{ url('support-ticket') }}" 
                    class="list-group-item border-0">
                     Tickets <sup class="badge bg-warning">{{ count($tickets) }}</sup> 
                    </a>
                </div>
                
            </div>
            
        </div>
        <div class="col-xl-3 col-xxl-3 col-lg-3 col-md-3 text-start"></div>

        <!-- right side top part -->
        
    </div>
@endsection
