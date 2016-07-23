//Recive Code
var entitytypee,entityidd,teamm,entity_max_hp,entity_max_mp,entity_max_sp,xx,yy;


entitytypee=readshort(0);
entityidd=readint(0);
teamm=readbyte(0);

entity_max_hp=readint(0);
entity_max_mp=readint(0);
entity_max_sp=readint(0);
xx=readint(0);
yy=readint(0);

clearbuffer(0);

pro=scr_entity_spawn(xx,yy,entitytypee);
pro.entityid=entityidd;
pro.entity_max_hp=entity_max_hp;
pro.entity_max_mp=entity_max_mp;
pro.entity_max_sp=entity_max_sp;