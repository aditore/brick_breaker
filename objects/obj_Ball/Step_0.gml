/// @description Ball Control
if !go
	{
		// Start game by hitting space
		if keyboard_check_pressed(vk_space)
			{
				// Set ball speed, direction and go (won't run again)
				go = true;
				speed = spd;
				direction = dir;
				audio_play_sound(snd_Click, 0, false);
			}
	}


