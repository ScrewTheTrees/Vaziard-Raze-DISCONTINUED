///scr_resolution_from_string(String)
//Make sure that the string contains X

var work,tempw,temph;

work=argument0;

tempw="";
temph="";

ii=1;

while(string_char_at(work,ii)!="X" && ii<100)
    {
    tempw+=string_char_at(work,ii);
    ii+=1;
    }

ii+=1
    
while(ii<=string_length(work) && ii<100)
    {
    temph+=string_char_at(work,ii);
    ii+=1;
    }
    
    tempw=real(tempw);
    temph=real(temph);
    
    global.gamewidth=tempw;
    global.gameheight=temph;