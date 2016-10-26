//Ends the privacy of the game by extracting all the sprites/backgrounds from the game...
/*
if !FS_directory_exists(working_directory+"\Command666")
FS_directory_create(working_directory+"\Command666")

if !FS_directory_exists(working_directory+"\Command666\Sprites")
FS_directory_create(working_directory+"\Command666\Sprites")

if !FS_directory_exists(working_directory+"\Command666\Backgrounds")
FS_directory_create(working_directory+"\Command666\Backgrounds")

    var no,i,ds_map;
    no = sprite_create_from_surface(0,0,0,1,1,false,false,0,0);
    sprite_delete(no);
    for (i=0; i<no; i+=1) {
        if (sprite_exists(i)) {
            FS_sprite_save_strip(i,working_directory+"\Command666\Sprites\"+string(sprite_get_name(i)) + "_strip" + string(sprite_get_number(i)) + ".png");
        }
    }

    
    
    var no,i,ds_map;
    no = background_create_from_surface(0,0,0,1,1,false,false);
    background_delete(no);
    for (i=0; i<no; i+=1) {
        if (background_exists(i)) {
            FS_background_save(i,working_directory+"\Command666\Backgrounds\"+string(background_get_name(i)) + "_background.png");
        }
    }
