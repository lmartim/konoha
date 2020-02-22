
var cameraX, cameraY;

var inventory = obj_controller.inventory;

cameraX = camera_get_view_x(view_camera[0]);
cameraY = camera_get_view_y(view_camera[0]);



var _cursor = instance_create_layer(cameraX+36, cameraY+36, "HUD", obj_inventory_cursor);

var itemPos = 0;
for(i = 0; i < ds_grid_height(inventory); i++) {
    if(ds_grid_get(inventory, i, 0)) {
		instance_create_layer((cameraX+25)+itemPos, cameraY+25, "HUD", ds_grid_get(inventory, i, 1));
		itemPos += 16;
	}
}

var _inventoryBubble = instance_create_layer(cameraX+20, cameraY+20, "HUD", obj_inventory_bubble);






