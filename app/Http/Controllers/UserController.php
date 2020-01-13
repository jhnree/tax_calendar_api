<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Exception;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    //
    public function Login(Request $request){
        $rule = ['email' => 'required', 'password' => 'required'];
        $validation = Validator::make($request->all(), $rule);

        if($validation->fails()){
            return 0;
        }

        if(is_numeric($request->email)){
            $isMobileMatch = User::where('mobile_num', $request->email)->first();
            if($isMobileMatch){
                if(Hash::check($request->password, $isMobileMatch['password'])){
                    return $isMobileMatch;
                }
                else{
                    return 2;
                }
            }
            else{
                return 1; // User doesn't exist
            }
        }
        else{
            $isUserMatch = User::where('username',$request->email)->orWhere('email', $request->email)->first();
            if($isUserMatch){
                if(Hash::check($request->password, $isUserMatch['password'])){
                    return $isUserMatch;
                }
                else{
                    return 2;
                }
            }
            else{
                return 1;
            }
        }
    }

    public function UserAccount($id){
        try{
            $userInfo = User::where("id", $id)->first();
            if($userInfo){
                return $userInfo;
            }
            return 0;
        }
        catch(Exception $e){
            return $e;
        }
        // return $request->all();
    }
}
