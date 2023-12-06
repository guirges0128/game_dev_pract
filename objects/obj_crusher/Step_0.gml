/// @description Crusher

//States: moving, falling, rising
switch (state) {
	//waiting state
	case "WAITING": {
		//state is changed to falling when alarm is fired
		if (alarm[0] == -1) {
			alarm[0] = game_get_speed(gamespeed_fps) * 3;
		}
		break;
	}
	case "FALLING": {
		vsp += grav;
		//state is changed to rising when alarm is fired
		if (alarm[1] == -1) {
			if (place_meeting(x, y + 1, obj_solid)) {
				alarm[1] = game_get_speed(gamespeed_fps);
			}			
		}
		break;
	}
	case "RISING": {
		//exploding state
		
		vsp += -grav;
		vsp = clamp(vsp, -2, 0);
		
		if (place_meeting(x, y - 1, obj_solid)) state = "WAITING";	

		break;
	}
	
}

movement_collision();



