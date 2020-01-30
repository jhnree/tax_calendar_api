<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\EventsList;
use App\EventsDate;
use Carbon\Carbon;
use DB;
class TestController extends Controller
{
    public function insertEventDate(Request $request)
    {
        $getEventDate = $request->eventDate;
        $eventsDate = new EventsDate;
        $eventsDate->event_deadline = $getEventDate;
        $eventsDate->created_by = 1;

        $eventsDate->save();

        $eventsList = new EventsList([
           'calendar_events_date_id' => $eventsDate->id,
           'event_title' => $request->eventTitle,
           'event_description' => $request->eventDescription,
           'remarks' => $request->eventRemarks,
           'created_by' => 1
       ]);

        $eventsList->save();

        return response()->json('Successfully Inserted');
    }

    public function getAllEventList()
    {
        $eventList = EventsList::all();
        return $eventList;
    }

    public function getAllEventDate()
    {
        // $eventListDate = DB::table('txc_tbl_calendar_events_date')->select('event_deadline')->get();
        $eventListDate = EventsDate::all();
        return $eventListDate;
    }

}
