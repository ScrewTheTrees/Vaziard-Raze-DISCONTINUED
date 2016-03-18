///scr_team_hostile(Team1,Team2)
//Return values= 0 - Not hostile ,  1 - Hostile , 2 - Hostile but no damage

team1=argument0;
team2=argument1;

if team1=TEAM_PLAYER
    {
    if team2=TEAM_ENEMY return (1);
    }

else if team1=TEAM_ENEMY
    {
    if team2=TEAM_PLAYER return (1);
    if team2=TEAM_ALLY return (2);
    }

else if team1=TEAM_RED
    {
    if team2=TEAM_BLUE or team2=TEAM_GREEN  return (1)
    }
else if team1=TEAM_BLUE
    {
    if team2=TEAM_RED or team2=TEAM_GREEN  return (1)
    }
else if team1=TEAM_GREEN
    {
    if team2=TEAM_RED or team2=TEAM_BLUE  return (1)
    }



return (0); //Just pass through
