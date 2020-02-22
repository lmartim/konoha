/// @description - add item to inventory
/// @param active - item is active or not
/// @param object - item object
/// @param description - item description

var inventory = obj_controller.inventory;
var qtItems = obj_controller.qtItems;

ds_grid_add(inventory, qtItems, 0, argument0);
ds_grid_add(inventory, qtItems, 1, argument1);
ds_grid_add(inventory, qtItems, 2, argument2);

obj_controller.qtItems++;

show_debug_message(obj_controller.qtItems);