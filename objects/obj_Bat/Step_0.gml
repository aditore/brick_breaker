/// @description Move
if keyboard_check(vk_left) // Check for left arrow being held down
	{
		// This is to check the bat doesn't go out of the room to the left
		if x > sprite_get_xoffset(sprite_index) + spd
			{
				x -= spd; // Move the bat
			}
		else
			{
				x = sprite_get_xoffset(sprite_index); // Clamp the bat to the leftmost side
			}
	}

if keyboard_check(vk_right) // Check for right arrow being held down
	{
		// This is to check the bat doesn't go out of the room to the right
		if x < room_width - sprite_get_xoffset(sprite_index) - spd
			{
				x += spd;
			}
		else
			{
				x = room_width - sprite_get_xoffset(sprite_index); // Clamp the bat to the rightmost side
			}
	}

// Move ball with the bat if the ball isn't moving yet
with (obj_Ball)
	{
		if !go x = other.x
	}
			


