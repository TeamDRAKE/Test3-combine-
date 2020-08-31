//get the lenghtdir x & y


//THIS IS MEANT FOR NON-STATIC OBJECT THAT DONT MOVE ALONG Z-AXIS
//EXP : PLATFORM, BLOCKS
//Note : global,z-90 otherwise everything will go right

x_axis = lengthdir_x(1,global.z-90);
y_axis = lengthdir_y(1,global.z-90);

// draw sprite 3d relative to z axis
for (var i = 0; i < image_number; i++)
{
	draw_sprite_ext(sprite_index,i,x+(i*x_axis),y-(i*y_axis),image_xscale,image_yscale,direction,c_white,1);	
}

//set image speed
image_speed = 0;