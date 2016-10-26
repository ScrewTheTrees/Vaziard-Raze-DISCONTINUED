///scr_weapon_animation_set(WeaponSprite, ArmsSprite, AnimationPlaying, AnimationRepeat, AnimationArms)

//If animation is not playing or a new animation is starting, 
//which means that unless a new animation is starting it wont change sprite

if (obj_player.weapon_animation_playing==false || argument2==true)
{
obj_player.weapon_sprite=argument0;
obj_player.arms_sprite=argument1;
obj_player.weapon_animation_playing=argument2;
obj_player.weapon_animation_repeat=argument3;
obj_player.weapon_animation_arms_animate=argument4;

obj_player.weapon_animation_frame=0;
}
