//If you are pressing left/right at the same time
if (press_right==true && press_left==true) movespeed=0;

else if (hspeed!=0) movespeed=2;  //Cant move quick while moving this way

else if (do_sidedash_right==true || do_sidedash_left==true) movespeed=0; //Cant move at all while dashing



//You can move just fine otherwise
else if press_right==true 
     {
     movespeed = (max_movespeed+movespeed_mod);
     facedir=1;
     }
else if press_left==true 
     {
     movespeed = (max_movespeed+movespeed_mod);
     facedir=-1;
     }
else movespeed=0;
     
