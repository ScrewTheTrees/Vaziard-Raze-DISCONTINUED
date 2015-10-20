var oo_m,oo,myfile;

if FS_file_exists("EData\Data.vsave")==true
{
myfile=FS_file_text_open_read("EData\Data.vsave");


//Skip header
FS_file_text_readln(myfile);
FS_file_text_readln(myfile);
FS_file_text_readln(myfile);
FS_file_text_readln(myfile);


oo_m=FS_file_text_read_real(myfile);         //Keybindings
FS_file_text_readln(myfile);
for (oo=0;oo<=oo_m;oo+=1)
{
global.keybind[oo]=FS_file_text_read_real(myfile);
FS_file_text_readln(myfile);
}
FS_file_text_readln(myfile);


global.playername=FS_file_text_read_string(myfile)                  FS_file_text_readln(myfile);
global.gamewidth=FS_file_text_read_real(myfile)                     FS_file_text_readln(myfile);
global.gameheight=FS_file_text_read_real(myfile)                    FS_file_text_readln(myfile);
global.fullscreen=FS_file_text_read_real(myfile)                    FS_file_text_readln(myfile);
global.difficult=FS_file_text_read_real(myfile)                     FS_file_text_readln(myfile);



FS_file_text_close(myfile);
}
