///get_team_color(TEAM)
//returns color

switch (argument0)
    {
    case TEAM_PLAYER: return (make_colour_rgb(0,200,0)) break;
    case TEAM_ALLY: return (make_colour_rgb(0,200,200)) break;
    case TEAM_ENEMY: return (make_colour_rgb(200,0,0)) break;
    
    case TEAM_RED: return (make_colour_rgb(200,0,0)) break;
    case TEAM_GREEN: return (make_colour_rgb(0,200,0)) break;
    case TEAM_BLUE: return (make_colour_rgb(0,0,200)) break;
    
    }
return (c_black);
