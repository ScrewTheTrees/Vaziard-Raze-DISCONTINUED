///scr_entity_damage(Damage)

if (other.canCollide==true)
{
other.entity_health-=argument0;
other.alarm[2]=20; //Set player timer before sync of health

with (other) {msg_send_entity_damage(argument0);}


if destroy_enemy==true instance_destroy();
}
//else ignore
