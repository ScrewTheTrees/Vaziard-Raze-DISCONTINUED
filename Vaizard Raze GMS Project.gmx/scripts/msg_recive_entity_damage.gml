if instance_exists(obj_entityparent)
{
tempid=readint(0);
damage=readint(0);

clearbuffer(0);


obj_entityparent.tempid=tempid;
obj_entityparent.damage=damage;

with(obj_entityparent)
{
if entityid==tempid
{
entity_hp-=damage; //Take damage

}
}//With


}

if global.playerid==0
{
writebyte(MSG_PLAYERINFO,0);
writeushort(tempid,0);
writeushort(weapon_sprite,0);
writeushort(weapon_equipped,0);
scr_send_client(SEND_OTHER,0);
clearbuffer(0);
}
