/// @description Insert description here
// You can write your code in this editor

// [0 = ativo; 1 = sprite; 2 = desc]
inventory = ds_grid_create(10, 3);
qtItems = 0;

//ds_grid_add(inventory, 0, 0, true);
//ds_grid_add(inventory, 0, 1, obj_scroll_thunder);
//ds_grid_add(inventory, 0, 2, "Um scroll do trovão");

//ds_grid_add(inventory, 1, 0, true);
//ds_grid_add(inventory, 1, 1, obj_scroll_fire);
//ds_grid_add(inventory, 1, 2, "Um scroll do fogo");

//ds_grid_add(inventory, 2, 0, true);
//ds_grid_add(inventory, 2, 1, obj_scroll_ice);
//ds_grid_add(inventory, 2, 2, "Um scroll do gelo");

activeDesc = ds_grid_get(inventory, 0, 2)

finish_game = false;