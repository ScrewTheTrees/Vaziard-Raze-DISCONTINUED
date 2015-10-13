///get_roomid(Room / ID / NAME ,  RETURN_ID_  )

//Note to self, always use negative numbers for ROOM id's due to how rooms work

var returnid,numid,nameid,gmid;

returnid=argument1;

numid=0;
nameid="";
gmid=room_preset;

       switch (argument0)
       {
       case rm_test:     case "test":      case -1:
       gmid=rm_test;     nameid="test";    numid=-1;
       break;
       }


if returnid=RETURN_ID_NUM return numid;
else if returnid=RETURN_ID_GM return gmid;
else if returnid=RETURN_ID_NAME return nameid;

