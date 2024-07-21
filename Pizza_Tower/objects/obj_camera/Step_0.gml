var target;
if (global.panic == 1)
    timestop = 0
else
    timestop = 1

background_width = [];
background_height = [];
var bg_num = 5;
for (var i = 1; i < bg_num; i++) {
	var b = string_concat("Backgrounds_", i);
	if layer_exists(b) && (layer_background_get_sprite(layer_background_get_id(b))) != -1 {
		array_push(background_width, sprite_get_width(layer_background_get_sprite(layer_background_get_id(b))))
		array_push(background_height, sprite_get_height(layer_background_get_sprite(layer_background_get_id(b))))
	} else {
		array_push(background_width, 0);
		array_push(background_height, 0);
	}
}

if (room == AT_room17 || room == AT_room8 || room == AT_room15 || room == AT_room6)
{
    layer_x("Backgrounds_1", lerp(0, (room_width - background_width[0]), (cx/ (room_width - w))) / 6);
	layer_y("Backgrounds_1", lerp(0, (room_height - background_height[0]), (cy / (room_height - h))) / 6);
	layer_x("Backgrounds_2", lerp(0, (room_width - background_width[0]), (cx / (room_width - w))) / 8);
	layer_y("Backgrounds_2", lerp(0, (room_height - background_height[0]), (cy / (room_height - h))) / 8);
	layer_background_xscale(layer_background_get_id("Backgrounds_2"), 0.5);
	layer_background_yscale(layer_background_get_id("Backgrounds_2"), 0.5);
	layer_x("Backgrounds_3", lerp(0, (room_width - background_width[0]), (cx / (room_width - w))) / 10);
	layer_y("Backgrounds_3", lerp(0, (room_height - background_height[0]), (cy / (room_height - h))) / 10);
    layer_background_xscale(layer_background_get_id("Backgrounds_3"), 0.8);
	layer_background_yscale(layer_background_get_id("Backgrounds_3"), 0.8);
	layer_x("Backgrounds_5", lerp(0, (room_width - background_width[0]), (cx / (room_width - w))) / 16);
    layer_y("Backgrounds_5", lerp(0, (room_height - background_height[0]), (cy / (room_height - h))) / 16);
	layer_background_xscale(layer_background_get_id("Backgrounds_5"), 0.7);
	layer_background_yscale(layer_background_get_id("Backgrounds_5"), 0.7);
	layer_y("Backgrounds_5", 300);
}
if (room == normalT_bonus1)
{
    layer_x("Backgrounds_2", lerp(0, (room_width - background_width[0]), cx / (room_width - w)) / 6)
	layer_y("Backgrounds_2", lerp(0, (room_height - background_height[0]), cy / (room_height - h)) / 6)
}
if (room == timesuproom)
    timestop = 1
if (global.seconds == 0 && global.minutes == 0 && room != timesuproom && (!instance_exists(obj_endlevelfade)))
{
    obj_player.state = 25
    room = timesuproom
    obj_player.image_index = 0
}
if (global.seconds < 0)
{
    global.seconds = 59
    global.minutes -= 1
}
if (global.seconds > 59)
{
    global.minutes += 1
    global.seconds -= 59
}
if (global.panic == 1 && global.minutes < 1 && basement == 0)
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
else if (global.panic == 1 && basement == 0)
{
    shake_mag = 2
    shake_mag_acc = (3 / room_speed)
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
if (instance_exists(obj_player) && obj_player.state != 25 && obj_player.state != 44)
{
    target = obj_player
    view_xview[0] = (target.x - (view_wview[0] / 2))
    view_xview[0] = clamp(view_xview[0], 0, (room_width - view_wview[0]))
    view_yview[0] = (target.y - (view_hview[0] / 2))
    view_yview[0] = clamp(view_yview[0], 0, (room_height - view_hview[0]))
    if (shake_mag != 0)
    {
        view_xview[0] = (target.x - (view_wview[0] / 2))
        view_xview[0] = clamp(view_xview[0], 0, (room_width - view_wview[0]))
        view_yview[0] = ((target.y - (view_hview[0] / 2)) + irandom_range((-shake_mag), shake_mag))
        view_yview[0] = clamp(view_yview[0], (0 + irandom_range((-shake_mag), shake_mag)), ((room_height - view_hview[0]) + irandom_range((-shake_mag), shake_mag)))
    }
}
