var obj = argument[0];
var vx = argument[1];
with(obj){
    if(place_meeting(x,y,obj_portal_left) or place_meeting(x+vx,y,obj_portal_left)){
        with(obj_portal_left){
            if(portal_direction==0 or portal_direction ==2){
                var temp = object_index;
                with(obj_portal_right){
                    return temp;
                }
            }
        }
    }
    if(place_meeting(x,y,obj_portal_right) or place_meeting(x+vx,y,obj_portal_right)){
        with(obj_portal_right){
            if(portal_direction==0 or portal_direction ==2){
                var temp = object_index;
                with(obj_portal_left){
                    return temp;
                }
            }
        }
    }
}
return -1;
