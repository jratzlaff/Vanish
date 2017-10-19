var obj = argument[0];
var vx = argument[1];
var vy = argument[2];

vertical_collision = 0;
horizontal_collision = 0;
with(obj){
    if(check_collision(x+vx, y,obj)){
        var xn = x;
        while(!check_collision(xn+sign(vx),y, object_index))
        {   
            xn += sign(vx);
        }
        x=xn;
        horizontal_collision = 1;
    }
    else
        x+=vx;
    
    
    if(check_collision(x,y+vy, object_index)){
        var yn =y;
        while(!check_collision(x,yn+sign(vy), object_index))
        {
            yn += sign(vy);
        }
        y=yn;
        vertical_collision = 1;
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
