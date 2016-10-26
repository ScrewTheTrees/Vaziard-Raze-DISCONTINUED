if instance_exists(ENTITY)
{
tempid=readint(0);




ENTITY.tempid=tempid;

with(obj_entityparent)
{
if entityid==tempid
{
entity_health=readint(0); //Take damage

}
}//With


}
clearbuffer(0);
