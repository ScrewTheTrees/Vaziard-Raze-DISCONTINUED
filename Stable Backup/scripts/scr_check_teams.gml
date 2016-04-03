///scr_team_hostile(Team1,Team2)

team1=argument0;
team2=argument1;

if team1=TEAM_PLAYER
{
if team2=TEAM_ENEMY
return (true);
}
