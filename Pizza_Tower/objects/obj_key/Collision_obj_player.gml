if (inv_frame == 0 && obj_player.state != 13 && obj_player.state != 3 && obj_player.state != 1 && obj_player.state != 14 && obj_player.state != 7 && obj_player.state != 62)
{
    instance_destroy()
    global.key_inv = 1
    obj_player.key_particles = 1
    obj_player.alarm[7] = 30
}
if (global.keyget == 0 && obj_player.state != 13 && obj_player.state != 14 && obj_player.state != 3 && obj_player.state != 1 && obj_player.state != 7)
{
    scr_sound(sound_toppingot)
    obj_player.state = 45
    obj_player.image_index = 0
    global.keyget = 1
}
