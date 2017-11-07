var i;
var current_obj = argument[2];
with(current_obj){
    var collision_checks = get_collision_blocks(object_index);
    for (i = 0; i < ds_list_size(collision_checks); i++){
        if ( object_index == obj_moving_portal || object_index == obj_spider || object_index == obj_laser){
            if( collision_point(argument[0], argument[1], collision_checks[| i],false,true)){
                ds_list_destroy(collision_checks);
                return true;
            }
        } else {
            if (place_meeting(argument[0], argument[1], collision_checks[| i]) 
                    || collision_line(x, y, argument[0], argument[1], collision_checks[| i],false,true)){
                if (collision_checks[| i] == obj_crusher && collision_checks[| i].active == false){
                    continue;
                }
                ds_list_destroy(collision_checks);
                return true;
            }
        }
    }
    ds_list_destroy(collision_checks);
    return false;
}
