var p1 = argument[0];
var p2 = argument[1];
var obj = argument[2];
var COOLDOWN = 10;
if(instance_number(p2) > 0 && p1.cooldown == 0) {
    p1.cooldown = COOLDOWN;
    show_debug_message(string(p1.cooldown));
    var new_x;
    var new_y;
    var x_offset = 0;
    var y_offset = 0;
    with(p2){
        new_x = x;
        new_y = y;
        var other_facing = p1.portal_direction
        cooldown = COOLDOWN;
        p1.facing_case = -1;
        switch(portal_direction){//going to
            case(0):
                x_offset = 12;
                if(other_facing==1)//coming from
                {
                    p1.facing_case = 1;
                    //yvel to -xvel?
                }
                if(other_facing==3)
                {
                    p1.facing_case = 3;
                    //yvel to xvel?
                }
                if(other_facing==0)
                {
                    p1.facing_case = 0;
                    //xvel to -xvel
                }
                break;
            case(1):
                y_offset = -16;
                if(other_facing==0)
                {
                    p1.facing_case = 10;
                    //xvel to -yvel?
                }
                if(other_facing==2)
                {
                    p1.facing_case = 12;
                    //xvel to yvel?
                }
                if(other_facing==1)
                {
                    p1.facing_case = 11;
                    //yvel to -yvel
                }
                break;
            case(2):
                x_offset = -12;
                if(other_facing==1)
                {
                    p1.facing_case = 21;
                    //yvel to xvel?
                }
                if(other_facing==3)
                {
                    p1.facing_case = 23;
                    //yvel to -xvel?
                }
                if(other_facing==2)
                {
                    p1.facing_case = 22;
                    //xvel to -xvel
                }
                break;
            case(3):
                y_offset = 16;
                if(other_facing==0)
                {
                    p1.facing_case = 30;
                    //xvel to yvel?
                }
                if(other_facing==2)
                {
                    p1.facing_case = 32;
                    //xvel to -yvel?
                }
                if(other_facing==3)
                {
                    p1.facing_case = 33;
                    //yvel to -yvel
                }
                break;
        }
    }
    
    with(obj){
        x = new_x + x_offset;
        y = new_y + y_offset;
        switch(p1.facing_case){
            case 0:
            case 22:
                vel_x = -vel_x;
                break;
            case 11:
            case 33:
                vel_y = -vel_y;
                break;
            case 1:
                vel_x = vel_y;
                vel_y=0;
                break;
            case 3:
                vel_x = -vel_y;
                vel_y=0;
                break;
            case 10:
                vel_y = vel_x;
                vel_x=0;
                break;
            case 12:
                vel_y = -vel_x;
                vel_x=0;
                break;
            case 21:
                vel_x = -vel_y;
                vel_y=0;
                break;
            case 23:
                vel_x = vel_y;
                vel_y=0;
                break;
            case 30:
                vel_y = -vel_x;
                vel_x=0;
                break;
            case 32:
                vel_y = vel_x;
                vel_x=0;
                break;      
            default:
        }
    }
}
