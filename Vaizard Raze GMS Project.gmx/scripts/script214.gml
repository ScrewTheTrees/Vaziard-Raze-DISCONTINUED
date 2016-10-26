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

