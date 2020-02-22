/// @description Insert description here
// You can write your code in this editor

var up, down, left, right, vel_h, vel_v, gridInventoryDesc;

vel_h = 0;
vel_v = 0;

up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);

if (up && place_meeting(x, y - 25, obj_inventory_bubble)) {
	vel_v -= 16;	
	gridPosition -= 10;
}
if (down && place_meeting(x, y + 40, obj_inventory_bubble)) {
	vel_v += 16;
	gridPosition += 10;
}
if (left && place_meeting(x - 25, y, obj_inventory_bubble)) {
	vel_h -= 16;
	gridPosition -= 1;
}
if (right && place_meeting(x + 16, y, obj_inventory_bubble)) {
	vel_h += 16;
	gridPosition += 1;
}

gridInventoryDesc = ds_grid_get(obj_controller.inventory, gridPosition, 2);
if (!is_undefined(gridInventoryDesc) && gridInventoryDesc != "0") {
	obj_controller.activeDesc = gridInventoryDesc;
} else {
	obj_controller.activeDesc = "";
}



if (pulseOut) {
	image_xscale += .003;	
	image_yscale += .003;	
	if (image_xscale >= .6 && image_yscale >= .6	) {
		pulseOut = false;
		pulseIn = true;
	}
}

if (pulseIn) {
	image_xscale -= .003;	
	image_yscale -= .003;	
	if (image_xscale <= .5 && image_yscale <= .5	) {
		pulseOut = true;
		pulseIn = false;
	}
}



x += vel_h;
y += vel_v;
