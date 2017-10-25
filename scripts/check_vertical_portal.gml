var obj = argument[0];
with(obj){
    if(place_meeting(x,y,obj_portal_left)){
        with(obj_portal_left){
            if(portal_direction==1 or portal_direction ==3){
                var temp = object_index;
                with(obj_portal_right){
                    return temp;
                }
            }
        }
    }
    if(place_meeting(x,y,obj_portal_right)){
        with(obj_portal_right){
            if(portal_direction==1 or portal_direction ==3){
                var temp = object_index;
                with(obj_portal_left){
                    return temp;
                }
            }
        }
    }
}
return -1;
