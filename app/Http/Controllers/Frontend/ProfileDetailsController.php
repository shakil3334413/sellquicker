<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProfileDetailsController extends Controller
{
    public function index(){

    }


    public function update(){

    }

    public function store(Request $request){

        $this->validate($request,[
            'name' => 'required',
           'profile_pic'=>'jpg,jpeg,png',
        ]);
        $userProfile=new UserProfile();
        $userProfile->name=$request->name;
        $userProfile->phone=$request->phone;
        $userProfile->divison=$request->divison;
        $userProfile->city=$request->city;
        $userProfile->profile_pic=$request->profile_pic;
        $userProfile->save();

        return rediren()->back()->with('message','Success');
    }
}
