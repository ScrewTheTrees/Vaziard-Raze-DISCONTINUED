//--------********************----------
//TCP
repeat (20)
{
  if global.playerid=0
  size = receivemessage(client,0,0);
  else size = receivemessage(global.server,0,0);
  
  if size<0 {exit;} //Nothing is sended
  if size==0 {instance_destroy(); exit;} //Player leaves
  
  messageid = readbyte(0);
  
            scr_messages(messageid);
}
clearbuffer(0);