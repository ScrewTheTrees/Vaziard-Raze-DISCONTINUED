moveair=0;//Check for being in the air

//Clamping speed before the gravity calculation
if vspeed>max_fallspeed vspeed=max_fallspeed;
if vspeed<-max_speed vspeed=-max_speed;
if hspeed>max_speed hspeed=max_speed;
if hspeed<-max_speed hspeed=-max_speed;


if place_meeting(x,y+4,obj_solidparent)
   {
   gravity=0;
   vspeed=0;
   hspeed=0;
   }
else if place_meeting(x,y+real(vspeed),obj_solidparent) {gravity=0}
else {gravity = max_gravity+gravity_mod;   moveair=1;}



if place_meeting(x,y,obj_solidparent)
{
if !place_meeting(x+4,y,obj_solidparent) x+=1;
if !place_meeting(x-4,y,obj_solidparent) x-=1;

if !place_meeting(x,y+4,obj_solidparent) y+=1;
if !place_meeting(x,y-4,obj_solidparent) y-=1;
}
