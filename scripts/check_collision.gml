var i;
var current_obj = argument[2];
var collision_checks = get_collision_blocks(argument[2]);

for (i = 0; i < array_length_1d(collision_checks); i++){
    if ( current_obj == obj_moving_portal){
        if( collision_point(argument[0], argument[1], collision_checks[i],false,true)){
            return true;
        }
    } else {
        if (place_meeting(argument[0], argument[1], collision_checks[i])){
            if (collision_checks[i] == obj_crusher && collision_checks[i].active == false){
                continue;
            }
            return true;
        }
    }
}
return false;
