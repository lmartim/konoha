/// @description Insert description here
// You can write your code in this editor

elements = layer_get_all_elements("HUD");
for (var i = 0; i < array_length_1d(elements); i++) {

    var layerelement = elements[i];
    var inst = layer_instance_get_instance(layerelement);

    instance_destroy(inst)
}