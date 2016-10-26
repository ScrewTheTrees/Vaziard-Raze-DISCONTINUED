//Recive Code
var tempid;

tempid=readint(0);



    if instance_exists(ENTITY) {
ENTITY.tempid=tempid;

with(ENTITY)
{
if entityid==tempid
{
x=readshort(0);
y=readshort(0);
vspeed=readfloat(0);
hspeed=readfloat(0);
facedir=readshort(0);
movespeed=readfloat(0);
}
}

    }

clearbuffer(0);

