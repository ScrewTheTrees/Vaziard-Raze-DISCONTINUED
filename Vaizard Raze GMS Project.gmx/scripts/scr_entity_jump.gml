///scr_entity_jump(HoldJump,PressJump,WallJumpR,WallJumpL,JumpSpeed,WallJumpSpeed,WallJumpSpeedUp,JumpSpeedMod)
var press_jump, do_jump, do_walljump_right, do_walljump_left, jumpspeed, walljumpspeed, walljumpupspeed, jumpspeed_mod;

press_jump=argument0;
do_jump=argument1;
do_walljump_right=argument2;
do_walljump_left=argument3;
jumpspeed=argument4;
walljumpspeed=argument5;
walljumpupspeed=argument6;
jumpspeed_mod=argument7;


//Holding up makes you jump higher and fall slower... moar floaty
if (!place_meeting(x,y+4,obj_solidparent) && !place_meeting(x,y-4,obj_solidparent) && press_jump ==true)
   {
   vspeed -= gravity*0.6;
   }

if (do_jump==true)
   {
   vspeed = -jumpspeed+jumpspeed_mod;
   }
else if (do_walljump_right==true)
     {
     hspeed=walljumpspeed;
     vspeed=-(walljumpupspeed+(jumpspeed_mod/2));
     }
else if (do_walljump_left==true)
     {
     hspeed=-walljumpspeed;
     vspeed=-(walljumpupspeed+(jumpspeed_mod/2));
     }