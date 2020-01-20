<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class EventController extends Controller
{
    //
    public function DailyEvent(){
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
        if($eventQuery){
            if(count($eventQuery)>0){
                return $eventQuery;
            }
        }



        return 0;
    }
}
