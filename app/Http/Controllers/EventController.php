<?php

namespace App\Http\Controllers;

use App\EventNotification;
use Exception;
use Illuminate\Http\Request;
use App\Event;
use Illuminate\Support\Facades;
use Illuminate\Support\Facades\DB;

class EventController extends Controller
{
    //
    public function DailyEvent(){
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

    public function UserEventNotification($userID){
        try{
            $notify = DB::table('txc_tbl_calendar_events_list as event_list')
                    ->leftJoin('txc_tbl_user_event_notification as event_notification', 'event_notification.event_list_id', '=', 'event_list.id')
                    ->leftJoin('txc_tbl_calendar_events_date as event_date', 'event_date.id', '=', 'event_list.calendar_events_date_id')
                    ->where([['event_notification.read', '0'],
                            ['event_notification.user_id', $userID]])
                    ->whereNull(['event_list.deleted_at'])
                    ->select('event_list.id',
                            'event_date.event_deadline',
                            'event_notification.user_id',
                            'event_notification.read',
                            'event_list.calendar_events_date_id',
                            'event_list.event_title',
                            'event_list.event_description',
                            'event_list.remarks',
                            'event_date.event_deadline',
                            'event_list.created_at',
                            'event_list.updated_at')
                    ->orderBy('event_list.updated_at', 'DESC')
                    ->get();
            if(count($notify) > 0){
                return $notify;
            }
            return 0;
        } catch(Exception $e){
            return $e;
        }
    }

    public function NotificationSeen(Request $request){
        try {
            $seen = EventNotification::where([['event_list_id', $request->eventId], ['user_id', $request->userId]])->update([
                'read' => '1',
            ]);
            dd($seen);
            return $seen;
        } catch (Exception $e) {
            return $e;
        }
    }

    public function UpcomingDeadline(){
        try{

            $sevenDays = date('Y-m-d', strtotime('+7 days'));
            $threeDays = date('Y-m-d', strtotime('+3 days'));
            $oneDay = date('Y-m-d', strtotime('+1 days'));

            $withinOneDay = DB::table('txc_tbl_calendar_events_date as event_date')
                                ->Join('txc_tbl_calendar_events_list as event_list', 'event_list.calendar_events_date_id', '=', 'event_date.id')
                                ->where('event_date.event_deadline', '=', $oneDay)
                                ->whereNull(['event_list.deleted_at'])
                                ->get();

            $withinThreeDays = DB::table('txc_tbl_calendar_events_date as event_date')
                                ->Join('txc_tbl_calendar_events_list as event_list', 'event_list.calendar_events_date_id', '=', 'event_date.id')
                                ->where('event_date.event_deadline', '=', $threeDays)
                                ->whereNull(['event_list.deleted_at'])
                                ->get();

            $withinSevenDays = DB::table('txc_tbl_calendar_events_date as event_date')
                                ->Join('txc_tbl_calendar_events_list as event_list', 'event_list.calendar_events_date_id', '=', 'event_date.id')
                                ->where('event_date.event_deadline', '=', $sevenDays)
                                ->whereNull(['event_list.deleted_at'])
                                ->get();

            $upcomingDeadlines = [];

            if($withinOneDay){

                $upcomingDeadlines[0] = $withinOneDay;

            }
            if($withinThreeDays){

                $upcomingDeadlines[1] = $withinThreeDays;
            }
            if($withinSevenDays){

                $upcomingDeadlines[2] = $withinSevenDays;

            }

            return count($upcomingDeadlines) > 0 ? $upcomingDeadlines : 0;
        }
        catch(Exception $e){
            return $e;
        }
    }
}
