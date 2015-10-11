///scr_sidemovement(Movespeed, Height to scan for slopes, Height for slow)
var i, gg, movespeed, movescanheight, movespeed_run;

movespeed=argument0;
movescanheight=argument1;
movescanslow=argument2;

gg=true;

//Move in X direction depending on key layout
if (movespeed!=0)
{
gg=false;

//Check in intervalls of 2 to preserve performance and skip it alltogether if you are moving up/down to quickly
if (vspeed>=2 || vspeed<=2) for (i=movescanheight; i>=movescanheight; i-=2)     
    {
    //Check the movescanslow to check if the entity should move slower.
    if (i>movescanslow || i<-movescanslow) movespeed_run = round(movespeed*0.75)
    else movespeed_run = movespeed;
    
    
    //If the position above the relative I position is free, whilst the position i+2 underneath is occupied
    if !place_meeting(x+movespeed_run,y+i,obj_solidparent)
    && place_meeting(x+movespeed_run,y+i+2,obj_solidparent)
       { 
       y+=dd; 
       x-=movespeed; 
       gg=true; 
       facedir=-1
       vspeed=0;
       hspeed=0;
       gravity=0;
       i=-10000; //Stop calculation
       }
     }//For

     //We did not move according to slope movement
if gg=false && !place_meeting(x+movespeed,y,obj_solidparent) {x+=movespeed facedir=-1};
}
