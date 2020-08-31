//VARIABLES

//create cam
instance_create_depth(x,y,0,o_cam);

//xy variables
spd = 4;

//z variable
z = 0;				// z postition
zfloor = 0;			// z position of floor beneath you
zspeed = 8;			// jumping speed
zgrav = 0;			// gravity speed;
zjump = false;		// check if character is airborne
cam_rot_speed = 2;	// Camera rotation speed
global.z = 120;		// set z

state = "move";


// set animation speed
//image_speed = 1;







