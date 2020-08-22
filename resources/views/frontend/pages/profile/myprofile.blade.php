@extends('frontend.layouts.master') @section('front-page-title',' | Profile ') @section('frontend-content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="emp-profile">
                <form method="post">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="profile-img">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt="" />
                                <div class="file btn btn-lg btn-primary">
                                    Change Photo
                                    <input type="file" name="file" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="profile-head">
                                <h5>
                                             {{ Auth::user()->name }}
                                        </h5>
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link" href="">My Post</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#profile">Profile Details</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#profile">Setting</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#profile">Membership</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#profile">Profile Details</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2">
                            {{--
                            <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile" /> --}}
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-8">
                            <div class="tab-content profile-tab" id="myTabContent">
                                <div class="tab-pane fade show active" id="myaccount" role="tabpanel" aria-labelledby="myaccount-tab">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label>Total Ads</label>
                                        </div>
                                        <div class="col-md-8">
                                            <p>You have just &nbsp;{{$adsCount}}&nbsp;ads</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
