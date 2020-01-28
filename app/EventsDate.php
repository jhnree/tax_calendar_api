<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EventsDate extends Model
{
    public $timestamps = false;
    protected $table = 'txc_tbl_calendar_events_date';
    protected $fillable = [
        'event_deadline','created_by','updated_by'
    ];
}
