//Recive Code
var entitytype,entityid,team,entity_max_hp,entity_max_mp,entity_max_sp,xx,yy;


entitytype=readshort(0);
entityid=readint(0);
team=readbyte(0);

entity_max_hp=readint(0);
entity_max_mp=readint(0);
entity_max_sp=readint(0);
xx=readint(0);
yy=readint(0);

clearbuffer(0);

pro=scr_entity_spawn(xx,yy,ENTITY_ENEMYTEST);
pro.entityid=entityid;
pro.entity_max_hp=entity_max_hp;
pro.entity_max_mp=entity_max_mp;
pro.entity_max_sp=entity_max_sp;
