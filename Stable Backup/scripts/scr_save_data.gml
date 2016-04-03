///scr_save_data();


if !FS_directory_exists("EData")
FS_directory_create("EData")

myfile=FS_file_text_open_write("EData\Data.vsave");

FS_file_text_write_string(myfile,"Save format for Vaizard");                             FS_file_text_writeln(myfile);
FS_file_text_write_string(myfile,"Save Name: General data");                             FS_file_text_writeln(myfile);
FS_file_text_write_string(myfile,"Do not edit unless you know what the hell you are doing"); FS_file_text_writeln(myfile);
FS_file_text_writeln(myfile);

//Keybindings
FS_file_text_write_real(myfile,global.keybinds)   
FS_file_text_writeln(myfile);
for (oo=0;oo<=global.keybinds;oo+=1)
{
FS_file_text_write_real(myfile,global.keybind[oo]);
FS_file_text_writeln(myfile);
}
FS_file_text_writeln(myfile);


FS_file_text_write_string(myfile,global.playername);                FS_file_text_writeln(myfile);
FS_file_text_write_real(myfile,global.gamewidth)                    FS_file_text_writeln(myfile);
FS_file_text_write_real(myfile,global.gameheight)                   FS_file_text_writeln(myfile);
FS_file_text_write_real(myfile,global.fullscreen)                   FS_file_text_writeln(myfile);
FS_file_text_write_real(myfile,global.difficult)                    FS_file_text_writeln(myfile);



FS_file_text_close(myfile);
