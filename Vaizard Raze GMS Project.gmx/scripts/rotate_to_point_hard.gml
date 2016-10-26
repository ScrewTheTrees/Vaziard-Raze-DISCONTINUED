//Usage:
//rotate_to_point_hard(x, y, speed)
var angle_1, angle_2, result, turn_speed,target_dir;

turn_speed=argument2;
target_dir = point_direction(x, y, argument0, argument1);

angle_1 = target_dir;
angle_2 = direction;
result = angle_1 - angle_2;
while (result > 180)  { result -= 360 }
while (result < -180) { result += 360 }
turn_dir=result

if (turn_dir < -turn_speed) { turn_dir = -turn_speed }
if (turn_dir > turn_speed) { turn_dir = turn_speed }
direction+=turn_dir;
