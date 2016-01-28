if moving=0 image_index=0; //If you are not walking... dont move legs

image_speed=movespeed/(max_movespeed/2)

if !place_meeting(x,y+4,obj_solidparent) draw_sprite_ext(spr_player_legs_jump,image_index,x,y,facedir,image_yscale,image_angle,color_legs,image_alpha);
else draw_sprite_ext(spr_player_legs,image_index,x,y,facedir,image_yscale,image_angle,color_legs,image_alpha);


draw_sprite_ext(spr_player_torso,image_index,x,y-48,facedir,image_yscale,image_angle,color_torso,image_alpha);


draw_sprite_ext(spr_player_head,image_index,x,y-66,facedir,image_yscale,image_angle,image_blend,image_alpha);

draw_sprite_ext(spr_player_hair_1,image_index,x,y-66,facedir,image_yscale,image_angle,color_hair,image_alpha);

draw_sprite_ext(spr_player_eye_standard,0,x+(6*facedir),y-64,facedir,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(spr_player_eye_standard,1,x+(6*facedir),y-64,facedir,image_yscale,image_angle,color_eyes,image_alpha);

