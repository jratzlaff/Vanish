var obj = argument[0];
var vx = argument[1];
var vy = argument[2];
if(vx==0 and vy==0)
    return 0;
show_debug_message("moving");
show_debug_message(string(vx)+","+string(vy));
show_debug_message(string(obj));
vertical_collision = 0;
horizontal_collision = 0;
with(obj){
    show_debug_message(string(object_index)+","+string(id))
    if(check_collision(x+vx, y, obj)){
        portal = check_horizontal_portal(obj,vx);
        if(portal == -1){
            var xn = x;
            while(!check_collision(xn+sign(vx),y, obj))
            {   
                xn += sign(vx);
            }
            x=xn;
            horizontal_collision = 1;
        }
        else{
            var temp;
            with(portal){
                temp = y;
            }
            y = (y+temp)/2;
            x +=vx;
        }
    }
    else
        x+=vx;
    
    
    if(check_collision(x,y+vy, obj)){
        portal = check_vertical_portal(obj,vy);
        if(portal==-1){
            var yn =y;
            while(!check_collision(x,yn+sign(vy), obj))
            {
                yn += sign(vy);
            }
            y=yn;
            vertical_collision = 1;
        }else{
            var temp;
            with(portal){
                temp = x;
            }
            x = (x+temp)/2;
            y+=vy;
        }
    }
    else
        y+=vy;


    //CoM line collision check for portals
    if(collision_line(xprevious,yprevious, x, y, obj_portal_left,false,false)){
        teleport(obj_portal_left, obj_portal_right, id);
        //TODO:possibly return different values
    }
    if(collision_line(xprevious,yprevious, x, y, obj_portal_right,false,false)){
        teleport(obj_portal_right, obj_portal_left, id);
        //TODO:possible return different values    
    }
}
return ((1*vertical_collision)+(2*horizontal_collision));
