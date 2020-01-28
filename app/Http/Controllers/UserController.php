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

    public function Hash($data){
        try{
            return Hash::Make($data);
        }
        catch(Exception $e){
            return $e;
        }
    }

    public function AllUser(Request $request){
        try{
            $Users = User::all();
            foreach($Users as $user){
                if(Hash::check($user->id, $request->hashed)){
                    return $user;
                }
            }
            return `User doesn't exist`;
        } catch(Exception $e){
            return $e;
        }
    }
    public function DailyEvent()
    {
        // $rule = ['year' => 'required', 'month' => 'required', 'day' => 'required'];
        // $validation = Validator::make($request->all(), $rule);

        // if($validation->fails()){
        //     return 0;
        // }

        $eventQuery = DB::table('txc_tbl_calendar_events_date as event_date')
            ->Join('txc_tbl_calendar_events_list as event_list', 'event_date.id', '=', 'event_list.calendar_events_date_id')
            ->whereNull('event_list.deleted_at')
            // ->where('event_deadline', $request->year.'-'.$request->month.'-'.str_pad($request->day, 2, '0', STR_PAD_LEFT))
            ->select('event_date.event_deadline', 'event_list.event_title', 'event_list.event_description', 'event_list.remarks', 'event_list.id')
            ->get();
        if ($eventQuery) {
            if (count($eventQuery) > 0) {
                return $eventQuery;
            }
        }

        return 0;
    }





}
