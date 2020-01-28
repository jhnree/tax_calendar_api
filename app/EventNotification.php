<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EventNotification extends Model
{
    //
    protected $table = 'txc_tbl_user_event_notification';

    protected $fillable = [
        'event_list_id',
        'user_id',
        'read',
        'created_by',
    ];
}
