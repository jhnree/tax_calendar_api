<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\EventsList;
use App\EventsDate;
use Carbon\Carbon;
class TestController extends Controller
{
    public function insertEventDate(Request $request)
    {
        // $eventsDate = new EventsDate([
        //     'event_deadline' => $request->eventDate,
        //     'created_by' => 1
        // ]);

        $getEventDate = $request->eventDate;
        dd($getEventDate);
        $eventsDate = new EventsDate;
        $eventsDate->event_deadline = $getEventDate;
        $eventsDate->created_by = 1;
        if(EventsDate::select('event_deadline')->where('event_deadline', $getEventDate)->exists()){
            return 'date exists';
        }else{
            return 'date not exists';
            // $eventsDate->save();
        }


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

    public function getAll()
    {
        $event = EventsList::all();
        return json_decode($event);
    }
}
