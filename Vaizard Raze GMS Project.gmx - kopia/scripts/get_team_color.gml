///get_team_color(TEAM)
//returns color

switch (argument0)
    {
    case TEAM_PLAYER: return (make_colour_rgb(0,255,0)) break;
    case TEAM_ALLY: return (make_colour_rgb(0,255,255)) break;
    case TEAM_ENEMY: return (make_colour_rgb(255,0,0)) break;
    
    case TEAM_RED: return (make_colour_rgb(255,0,0)) break;
    case TEAM_GREEN: return (make_colour_rgb(0,255,0)) break;
    case TEAM_BLUE: return (make_colour_rgb(0,0,255)) break;
    
    }
return (c_black);