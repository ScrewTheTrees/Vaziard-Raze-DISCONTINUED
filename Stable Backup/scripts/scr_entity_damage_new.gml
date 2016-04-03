///scr_entity_damage(Damage)

other.entity_hp-=argument0;
with (other) {msg_send_entity_damage(argument0);}


if destroy_enemy==true instance_destroy();
