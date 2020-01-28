<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EventsList extends Model
{
    protected $table = 'txc_tbl_calendar_events_list';
    public $timestamps = false;
    protected $fillable = ['calendar_events_date_id', 'event_title', 'event_description', 'remarks', 'created_by'];
}
