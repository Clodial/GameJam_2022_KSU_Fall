/// @description Insert description here
// You can write your code in this editor
itemToSpawn = floor(random_range(1,4));

switch (itemToSpawn) {
	case 1:
		instance_create_layer(x + sprite_width/4, y + sprite_height/4,"wall_layer", item_bin);
		break;
	case 2:
		instance_create_layer(x + sprite_width/4, y + sprite_height/4,"wall_layer", item_book);
		break;
	default:
		instance_create_layer(x + sprite_width/4, y + sprite_height/4,"wall_layer", item_alarm);
		break;
}
instance_destroy(id);