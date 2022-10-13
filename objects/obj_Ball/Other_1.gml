/// @description Bounce or Die
// is ball colliding with the left or right side of the room? check
if bbox_left < 0 || bbox_right > room_width
	{
		// ball to stay within bounds
		x = clamp(x, sprite_get_xoffset(sprite_index), room_width - sprite_get_xoffset(sprite_index));
		// reverse the horizontal component of the speed vector*
		hspeed *= -1;
	}
// is the ball colliding with the top of the room
if bbox_top < 0
	{
		// reverse vertical component of the speed vector*
		vspeed *= -1;
	}
else
	{
		// is ball leaving the bottom of the room
		if bbox_bottom > room_height
			{
				// ball is leaving, so create new ball and destroy current ball
				global.player_lives -= 1;
			if global.player_lives <= 0
				{
					// Check for new highscore
					if global.player_score > global.high_score
						{
							global.high_score = global.player_score;
						}
					// Set controller state
					with (obj_Control)
						{
							state ="GAMEOVER"
						}
				}
			else
				{
				// Only create a new ball if the player has lives
					instance_create_layer(xstart, ystart, layer, obj_Ball);
				}
			instance_destroy();
			}
	}
// with each bounce, increase ball speed (has a maximum)
if speed < 12 speed += 0.1;
audio_play_sound(snd_Bounce, 0, false);
direction += 2 - random(4);


