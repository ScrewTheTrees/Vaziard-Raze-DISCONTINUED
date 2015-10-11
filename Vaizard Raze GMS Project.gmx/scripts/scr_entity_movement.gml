///scr_sidemovement(Movespeed, Facedir ,Height to scan for slopes,  movescanintervall)
var i, j, gg, movespeed, facedir, movescanheight, movespeed_run;

movespeed=argument0;
facedir=argument1;
movescanheight=argument2;
movescanintervall=argument3;

gg=true;
movespeed_run=movespeed*facedir;

//Move in X direction depending on key layout
if (movespeed!=0)
{
gg=false;

//Check in intervalls of 2 to preserve performance and skip it alltogether if you are moving up/down to quickly
if (place_meeting(x,y+4,obj_solidparent)==true)  for(i=movescanheight; i>=-movescanheight; i-=movescanintervall)
    {
    
     movespeed_run = movespeed;
    movespeed_run=movespeed_run*facedir; //Turn the movement direction towards facedir
    
    //If the position above the relative I position is free, whilst the position i+2 underneath is occupied
    if !place_meeting(x+movespeed_run,y+i,obj_solidparent)
    && place_meeting(x+movespeed_run,y+i+2,obj_solidparent)
       { 
       y+=i; 
       x+=movespeed_run; 
       gg=true; 
       facedir=-1
       vspeed=0;
       hspeed=0;
       gravity=0;
       i=-10000; //Stop calculation
       }
       
     }//For

     //We did not move according to slope movement
movespeed_run=movespeed*facedir; //Turn the movement direction towards facedir
if gg=false && !place_meeting(x+movespeed_run,y,obj_solidparent) {x+=movespeed_run}
else if gg=false && !place_meeting(x+(facedir*8),y,obj_solidparent) {x+=(facedir*8)};
else if gg=false && !place_meeting(x+facedir,y,obj_solidparent) {x+=facedir};
}//if movespeed
