/// @description Button Inputs
//get input
var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

var _move = _down - _up;
if _move != 0 {
	//move index
	index += _move;
	
	//clamp values
	var _size = array_length_1d(menu);
	if index < 0 index = _size - 1; //at start, loop to end
	else if index >= _size index = 0; // at end, loop to start

}

if _select {
	switch(index) {
		case 0:
			//START
			global.player_score = 0;
			global.player_lives = 3;
			global.high_score = 0;
			room_goto_next();
		break;
		case 1:
			//EXIT
			game_end();
		break;
	
	}

}
