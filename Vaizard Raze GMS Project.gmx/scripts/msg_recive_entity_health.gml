if instance_exists(ENTITY)
{
tempid=readint(0);




ENTITY.tempid=tempid;

with(ENTITY)
{
if entityid==tempid
{
entity_health=readint(0); //Take damage

}
}//With


}
clearbuffer(0);
