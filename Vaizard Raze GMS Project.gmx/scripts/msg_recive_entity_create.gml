//Recive Code
var entitytypee,entityidd,teamm,entity_max_hp,entity_max_mp,entity_max_sp,xx,yy;


entitytypee=readint(0);
entityidd=readint(0);
teamm=readbyte(0);


xx=readint(0);
yy=readint(0);

clearbuffer(0);

pro=instance_create(xx,yy,entitytypee);
pro.entityid=entityidd;

