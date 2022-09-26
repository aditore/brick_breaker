/// @description Destroy Brick
var _dir = direction - 180; // get the direction back along the way the ball moved
while (place_meeting(x, y, other)) // run while collision detected
	{
		// move ball back the direction it came from until no collision detected
		x += lengthdir_x(1, _dir);
		y += lengthdir_y(1, _dir);
	}
move_bounce_all(true); // set bounce angle
if speed < 12 speed += 0.1; // make ball faster
global.player_score += 15; // add to the score
audio_play_sound(snd_Break, 0, false);
instance_destroy(other); // destroy the brick


