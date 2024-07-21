if instance_exists(obj_keyconfig)
    visible = false
else
    visible = true
if keyboard_check(vk_f1)
{
    ini_open("saveData.ini")
    global.key_up = ini_write_string("ControlsKeys", "up", 38)
    global.key_right = ini_write_string("ControlsKeys", "right", 39)
    global.key_left = ini_write_string("ControlsKeys", "left", 37)
    global.key_down = ini_write_string("ControlsKeys", "down", 40)
    global.key_jump = ini_write_string("ControlsKeys", "jump", 90)
    global.key_slap = ini_write_string("ControlsKeys", "slap", 88)
    global.key_attack = ini_write_string("ControlsKeys", "attack", 16)
    ini_close()
}
ini_open("saveData.ini")
global.key_up = ini_read_string("ControlsKeys", "up", 38)
global.key_right = ini_read_string("ControlsKeys", "right", 39)
global.key_left = ini_read_string("ControlsKeys", "left", 37)
global.key_down = ini_read_string("ControlsKeys", "down", 40)
global.key_jump = ini_read_string("ControlsKeys", "jump", 90)
global.key_slap = ini_read_string("ControlsKeys", "slap", 88)
global.key_attack = ini_read_string("ControlsKeys", "attack", 16)
global.key_start = 27
ini_close()
global.key_upC = 32781
global.key_rightC = 32784
global.key_leftC = 32783
global.key_downC = 32782
global.key_jumpC = 32769
global.key_slapC = 32771
global.key_attackC = 32774
global.key_startC = 32778
if (!instance_exists(obj_keyconfig))
    scr_getinput()
if (key_up && (!instance_exists(obj_keyconfig)) && optionselect == 1)
{
    optionselect = 0
    scr_sound(sound_points)
}
else if (key_down && (!instance_exists(obj_keyconfig)) && optionselect == 0)
{
    optionselect = 1
    scr_sound(sound_points)
}
if (optionselect == 0)
    obj_cursor.y = (y - 24)
else if (optionselect == 1)
    obj_cursor.y = (y + 18)
if (optionselect == 0 && key_jump && (!instance_exists(obj_keyconfig)))
{
    obj_rockcutscene.hspeed = -15
    scr_sound(sound_pizzagot)
    instance_destroy()
    instance_destroy(obj_cursor)
    instance_destroy(obj_title)
}
if (optionselect == 1 && key_jump && (!instance_exists(obj_keyconfig)))
{
    scr_sound(sound_pizzagot)
    instance_create(x, y, obj_keyconfig)
}
