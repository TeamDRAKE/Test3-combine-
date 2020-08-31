//parameters
event_inherited();

////// STATES

switch (state)
{
	// Movement State
	case "move" :
	#region Move State
	if(keyboard_check(vk_left))
	{
	//Move left
	//Update left instance
	instleft = noone;
	
	//instance in path
	instleft = (instance_place(x+lengthdir_x(spd,-global.z-180),y+lengthdir_y(spd,-global.z-180),o_block_par))
	
	if(!instleft) or (instleft.z <= z)
	{
		x += lengthdir_x(spd,-global.z-180)
		y += lengthdir_y(spd,-global.z-180)
		
			
	}
	image_xscale = -1;
	image_speed = 1;
	sprite_index = s_sonic_run;
	
	}



	if(keyboard_check(vk_up))
	{
	//Move up
	//Update up instance
	instup = noone;
	
	//instance in path
	instup = (instance_place(x+lengthdir_x(spd,-global.z-270),y+lengthdir_y(spd,-global.z-270),o_block_par))
	
	if(!instup) or (instup.z <= z)
	{
		x += lengthdir_x(spd,-global.z-270)
		y += lengthdir_y(spd,-global.z-270)
	}
	image_speed = 1;
	sprite_index = s_sonic_run;
	}

	if(keyboard_check(vk_down))
	{
	//Move down
	//Update up instance
	instdown = noone;
	
	//instance in path
	instdown = (instance_place(x+lengthdir_x(spd,-global.z-90),y+lengthdir_y(spd,-global.z-90),o_block_par))
	
	if(!instdown) or (instdown.z <= z)
	{
		x += lengthdir_x(spd,-global.z-90)
		y += lengthdir_y(spd,-global.z-90)
	}

	image_speed = 1;
	sprite_index = s_sonic_run;
	}

	if(keyboard_check(vk_right))
	{
	//Move right
	//Update right instance
	instright = noone;
	
	//instance in path
	instright = (instance_place(x+lengthdir_x(spd,-global.z),y+lengthdir_y(spd,-global.z),o_block_par))
	
	if(!instright) or (instright.z <= z)
	{
		x += lengthdir_x(spd,-global.z)
		y += lengthdir_y(spd,-global.z)
	}

	//flip image
	image_xscale = 1;	
	image_speed = 1;
	sprite_index = s_sonic_run;
	}

	if keyboard_check(vk_space)
	{
	state = "jump";	
	}
	#endregion
	break;
	
	// Jump
	case "jump" :
	#region Jump State
	///jump on z

	//if on ground
	if (z <= zfloor)
	{
		zjump = true; /*you are now in the air*/
		
	}

	#endregion
	break;
}


//Attack
if state == "attack"
{
	#region Attack State
if keyboard_check(ord("J"))
{
	sprite_index = s_sonic_1st_attack;
	image_speed = 0.6;
}

	#endregion
}


///////////////////////////////////////////////////////

////// Animation

//Idle Animation
if (keyboard_check(vk_nokey))
{
  	sprite_index = s_sonic_idle;
}


///////////////////////////////////////////////////////

//z jump 
if(zjump == true)
{
	z+= zspeed;
	
}

//if not ontop of block
if(!instance_place(x,y,o_block_par))
{
	zfloor = 0;	
}

//airborne
if(!z <= zfloor)
{
	z -= zgrav;
	zgrav += 0.8;
	
	sprite_index = s_sonic_jump_test;

	state = "move";
}

//Landing
if(z <= zfloor+1) // +1 for sticking glitch on ground
{
	z = zfloor;
	zgrav = 0;
	zjump = false;
	sprite_index = s_sonic_land_test;
}




	
