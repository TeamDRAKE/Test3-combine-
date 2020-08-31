//update 3d camera depth
z_axis = -y;

//FOR NON-STATIC SPRITES ONLY .. LIKE PLATFORM
//facing North
if(global.z >= 355 and global.z < 360)
{
	z_axis = -y;	
}
if(global.z >= 0 and global.z < 5)
{
	z_axis = -y;
}

//facing NorthEast
if(global.z >= 5 and global.z < 85)
{
	z_axis = -y + x;	
}

//facing East
if(global.z >= 85 and global.z < 95)
{
	z_axis = x;	
}

//facing SouthEast
if(global.z >= 95 and global.z < 175)
{
	z_axis = x + y;	
}

//facing South
if(global.z >= 175 and global.z < 185)
{
	z_axis = y;	
}

//facing SouthWest
if(global.z >= 185 and global.z < 265)
{
	z_axis = y - x;	
}

//facing West
if(global.z >= 265 and global.z < 275)
{
	z_axis = -x;	
}

//facing NorthWest
if(global.z >= 275 and global.z < 355)
{
	z_axis = -x;	
}

//update depth
depth = z_axis;

if(global.z < 0)
{
	global.z = 360;
}
if(global.z > 360)
{
	global.z = 0;	
}

//global cam angle
camera_set_view_angle(view_camera[0],global.z)