@extends('admin.layout.index')
@section('content')
<div class="page-header card">
    <div class="row align-items-end">
        <div class="col-lg-8">
            <div class="page-header-title">
                <i class="feather icon-align-left bg-c-blue"></i>
                <div class="d-inline">
                    <h4>Danh Mục Con</h4>
                    <span>Edit</span>
                </div>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="page-header-breadcrumb">
                <ul class=" breadcrumb breadcrumb-title">
                    <li class="breadcrumb-item">
                        <a href=""><i class="feather icon-home"></i></a>
                    </li>
                    <li class="breadcrumb-item"><a href="#!">Danh Mục Con</a> </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="main-body">
    <div class="page-wrapper">

        <div class="page-body">
            <div class="row">
                <div class="col-sm-12">

                    <div class="card">
                        <div class="card-header">
                            <h5>{{$subcategory->Name}}</h5>

                        </div>
                        <div class="card-block">
                            @if(count($errors)>0)
                            <div class="alert alert-danger">
                                @foreach($errors->all() as $arr)
                                {{$arr}}<br>
                                @endforeach

                            </div>
                            @endif
                            @if (session('thongbao'))
                            <div class="alert alert-success">
                                {{session('thongbao')}}
                            </div>
                            @endif
                            <form action="admin/subcategory/edit/{!! $subcategory['id'] !!}" method="POST">
                                @csrf
                                <div class="form-group row">
                                    <label class="col-sm-1 col-form-label">Danh Mục Con</label>
                                    <div class="col-sm-11">
                                        <select name="category_id" class="form-control form-control-primary">
                                            @foreach ($category as $value)
                                            <option
                                            @if ($value['id'] == $subcategory['category_id'])
                                                {!! 'selected' !!}
                                            @endif
                                            value="{!! $value['id'] !!}">{!! $value['name'] !!}</option>    
                                            @endforeach
                                        </select>
                                    </div>
                                   
                                    </div>
                                <div class="form-group row">
                                    <label class="col-sm-1 col-form-label">Name</label>
                                    <div class="col-sm-11">
                                        <input type="text" class="form-control" value="{!! $subcategory['name'] !!}" name="name"
                                            placeholder="Subcategory's name" required>
                                        <span class="messages"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-1"></label>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary m-b-0">Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
@endsection
