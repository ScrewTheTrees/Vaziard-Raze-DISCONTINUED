//--------********************----------
//UDP
repeat (500)
{

    size = receivemessage(global.udp,0,0);
  
  if size<=0 {exit;} //Nothing is sended
  
  messageid = readbyte(0);
  
    scr_messages(messageid);
    clearbuffer(0);
}
clearbuffer(0);
