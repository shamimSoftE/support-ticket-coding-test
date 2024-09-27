@extends('FrontEnd.main')

@section('title', 'Add Product')

@push('style')
    <style>
    .c_active{ color: #ffffff!important; background-color: #198754; }
    </style>
@endpush

@section('content')

    <div class="row justify-content-between mt-5 mb-3 mx-0 px-5">

        <div class="col-lg-2 col-md-2">
            <div class="shadow rounded pl-1">
                <div class="list-group rounded-0 border-0">
                    <a href="{{ url('seller-dashboard') }}" class="list-group-item fw-bold @if(request()->segment(1) == 'seller-dashboard') c_active @endif" style="padding: 12px"> Dashboard </a>
                    <a href="{{ url('product_create') }}" class="list-group-item fw-bold @if(request()->segment(1) == 'product_create') c_active @endif" style="padding: 12px"> Add Product </a>
                    <a href="{{ url('product_list') }}" class="list-group-item fw-bold @if(request()->segment(1) == 'product_list') c_active @endif" class="list-group-item fw-bold " style="padding: 12px"> My Products </a>
                    <a href="{{ url('seller-order') }}" class="list-group-item fw-bold @if(request()->segment(1) == 'seller-order') c_active @endif" style="padding: 12px"> My Orders </a>
                </div>
            </div>
        </div>

        <div class="col-lg-10 col-md-10">

            <div class="user-div">
                <div class="shadow p-3">
                    <span class="text-center fs-19 fw-bold border-bottom">Product Information</span>

                    <div class="text-start">
                        <form method="POST" action="{{ url('product_store') }}" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label for="name" class="form-label">Product Name</label>
                                <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" id="name" aria-describedby="name">
                                @error('name')
                                    <div id="name" class="form-text text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="product_details" class="form-label">Product Details</label>
                                <textarea class="form-control @error('detail') is-invalid @enderror" name="detail" id="product_details" rows="5"></textarea>
                                @error('detail')
                                    <div id="product_name" class="form-text text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="mb-3">
                                <label for="product_content" class="form-label">Product Content</label>
                                <textarea class="form-control @error('content') is-invalid @enderror" name="content" id="product_content" rows="3" required></textarea>
                                @error('content')
                                    <div id="product_content" class="form-text text-danger">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-lg-6 col-xl-6 col-md-6">
                                            <div class="mb-3">
                                                <label for="productFile" class="form-label">Add Image</label>
                                                <input class="form-control @error('image') is-invalid @enderror" type="file" accept="image/*" name="image" id="productFile" onchange="document.getElementById('showImg2').src = window.URL.createObjectURL(this.files[0])">
                                                @error('image')
                                                    <div id="productFile" class="form-text text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-6 col-xl-6 col-md-6">
                                                    <div class="mb-3">
                                                        <label  class="form-label">Preview Image</label>
                                                        <img src="" id="showImg2" style="height: 100px;" alt="">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-xl-6 col-md-6">
                                                    <div class="mb-3">
                                                        <label for="price" class="form-label">Price</label>
                                                        <input class="form-control @error('image') is-invalid @enderror" type="text" name="price" id="price">
                                                        @error('price')
                                                            <div id="price" class="form-text text-danger">{{ $message }}</div>
                                                        @enderror
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-xl-6 col-md-6">
                                            <div class="mb-3">
                                                <label for="productFile" class="form-label">Product Category</label>
                                                <select class="form-select @error('category_id') is-invalid @enderror" name="category_id">
                                                    <option value="">  select </option>
                                                    @foreach ($category as $item)
                                                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                                                        @if(!empty(count($item->subCategories)))
                                                            @foreach ($item->subCategories as $subCat)
                                                                <option value="{{ $subCat->id }}">=>{{ $subCat->name }}</option>

                                                                @if(!empty(count($subCat->subCategories)))
                                                                    @foreach ($subCat->subCategories as $ssCat)
                                                                        <option value="{{ $ssCat->id }}">===>{{ $ssCat->name }}</option>

                                                                        @if(!empty(count($ssCat->subCategories)))
                                                                            @foreach ($ssCat->subCategories as $sssCate)
                                                                                <option value="{{ $sssCate->id }}">====>{{ $sssCate->name }}</option>
                                                                            @endforeach
                                                                        @endif

                                                                    @endforeach
                                                                @endif

                                                            @endforeach
                                                        @endif
                                                    @endforeach
                                                </select>
                                                @error('category_id')
                                                    <div class="form-text text-danger">{{ $message }}</div>
                                                @enderror
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-4 col-xl-4 col-md-4">
                                                    <div class="mb-3 form-check">
                                                        <input type="checkbox" class="form-check-input" name="delivery_type" id="manual" value="1">
                                                        <label class="form-check-label" for="manual">Manual</label>
                                                    </div>
        
                                                    <div class="mb-3 form-check">
                                                        <input type="checkbox" class="form-check-input" name="delivery_type" id="unlimited" value="2">
                                                        <label class="form-check-label" for="unlimited">Unlimited</label>
                                                    </div>
                                                </div>
                                                <div class="col-lg-8 col-xl-8 col-md-8">
                                                    <div class="mb-3 form-check">
                                                        <input type="checkbox" class="form-check-input" name="delivery_type"  id="auto_delivery" value="3">
                                                        <label class="form-check-label" for="auto_delivery">Auto Delivery</label>
                                                    </div>
        
                                                    <div class="mb-3 form-check">
                                                        <input type="checkbox" class="form-check-input" name="delivery_type" id="service" value="4">
                                                        <label class="form-check-label" for="service">Service</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <center> <button type="submit" class="btn btn-outline-success" style="width: 21%;">Add</button> </center>
                                </div>
                            </div>

                          </form>
                    </div>

                </div>
            </div>


        </div>


    </div>
@endsection


@push('script')

    <script>
        $(document).ready(function() {
            $('input[name="delivery_type"]').click(function(){
                $('input[name="delivery_type"]').prop('checked', false);
                $(this).prop('checked', true);

            });
        });
    </script>

@endpush
