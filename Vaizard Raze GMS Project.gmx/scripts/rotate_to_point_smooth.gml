//Usage:
//rotate_to_point_smooth(x, y, minSpeed, maxSpeed, steps)
//Made bah attacka

var sturn,targetDir;
sturn = 0;

targetDir = point_direction(x,y,argument0,argument1);
if(image_angle > 360) {
    image_angle -= 360;
}
if(image_angle < 0) {
    image_angle += 360;
}

if(targetDir > image_angle) {

    if(targetDir > image_angle+180){ //1.
        sturn = (targetDir-360-image_angle);
    } else { //2.
        sturn = (targetDir-image_angle);
    }
    
} else {
    
    if(image_angle > targetDir+180) { //3.
        sturn = (360-image_angle+targetDir);
    } else { //4.
        sturn = (targetDir-image_angle);
    }

}

if(abs(image_angle-targetDir) <= argument2 || abs(image_angle-targetDir) >= 360-argument2) {
    image_angle = targetDir;
} else {

//Clamp max speed
    if(sturn > 0 && sturn > argument3*argument4) {
        sturn = argument3*argument4;
    }
    if(sturn < 0 && sturn < -(argument3*argument4)) {
        sturn = -(argument3*argument4);
    }
//Clamp min speed
    if(sturn > 0 && sturn < argument2*argument4) {
        sturn = argument2*argument4
    }
    if(sturn < 0 && sturn > -(argument2*argument4)) {
        sturn = -(argument2*argument4)
    }
    image_angle += sturn/argument4;
}