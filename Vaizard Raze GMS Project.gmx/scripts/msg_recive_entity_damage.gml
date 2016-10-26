if instance_exists(ENTITY)
{
tempid=readint(0);
damage=readint(0);

clearbuffer(0);


ENTITY.tempid=tempid;
ENTITY.damage=damage;

with(ENTITY)
{
if entityid==tempid
{
entity_health-=damage; //Take damage/healing

}
}//With


}

