var current_obj = argument[0];
var collision_checks;

if (current_obj == obj_player){
    collision_checks[0] = obj_wall;
    collision_checks[1] = obj_barrier;
    collision_checks[2] = obj_crystal;
    collision_checks[3] = obj_crusher;
    
} else if (current_obj == obj_axe){
    collision_checks[0] = obj_wall;
    collision_checks[1] = obj_crusher;
    
} else if (current_obj == obj_moving_portal){
    collision_checks[0] = obj_wall;
    
} else if (current_obj == obj_axe_grunt){
    collision_checks[0] = obj_wall;
    collision_checks[1] = obj_barrier;
    
} else if (current_obj == obj_skull){
    collision_checks[0] = obj_wall;
    collision_checks[1] = obj_skull;
    
} else {
    show_debug_message("Object uses default collisions: " + current_obj); 
    collision_checks[0] = obj_wall;
}

return collision_checks;
