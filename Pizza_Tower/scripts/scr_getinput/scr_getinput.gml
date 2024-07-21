function scr_getinput()
{
	ini_open("saveData.ini")
	global.key_up = ini_read_string("ControlsKeys", "up", 38)
	global.key_right = ini_read_string("ControlsKeys", "right", 39)
	global.key_left = ini_read_string("ControlsKeys", "left", 37)
	global.key_down = ini_read_string("ControlsKeys", "down", 40)
	global.key_jump = ini_read_string("ControlsKeys", "jump", 90)
	global.key_slap = ini_read_string("ControlsKeys", "slap", 88)
	global.key_attack = ini_read_string("ControlsKeys", "attack", 16)
	global.key_start = vk_escape
	ini_close()
	global.key_upC = gp_padu
	global.key_rightC = gp_padr
	global.key_leftC = gp_padl
	global.key_downC = gp_padd
	global.key_jumpC = gp_face1
	global.key_slapC = gp_face3
	global.key_attackC = gp_shoulderr
	global.key_startC = gp_start
	key_up = (keyboard_check(global.key_up) || gamepad_button_check(0, global.key_upC) || gamepad_axis_value(0, gp_axislv) < 0)
	key_up2 = (keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(0, global.key_upC) || gamepad_axis_value(0, gp_axislv) < 0)
	key_right = (keyboard_check(global.key_right) || gamepad_button_check(0, global.key_rightC) || gamepad_axis_value(0, gp_axislh) > 0)
	key_right2 = (keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(0, global.key_rightC) || gamepad_axis_value(0, gp_axislh) > 0)
	key_left = (-((keyboard_check(global.key_left) || gamepad_button_check(0, global.key_leftC) || gamepad_axis_value(0, gp_axislh) < 0)))
	key_left2 = (-((keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(0, global.key_leftC) || gamepad_axis_value(0, gp_axislh) < 0)))
	key_down = (keyboard_check(global.key_down) || gamepad_button_check(0, global.key_downC) || gamepad_axis_value(0, gp_axislv) > 0)
	key_down2 = (keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(0, global.key_downC) || gamepad_axis_value(0, gp_axislv) > 0)
	key_jump = (keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(0, global.key_jumpC))
	key_jump2 = (keyboard_check(global.key_jump) || gamepad_button_check(0, global.key_jumpC))
	key_slap = (keyboard_check(global.key_slap) || gamepad_button_check(0, global.key_slapC))
	key_slap2 = (keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(0, global.key_slapC))
	key_attack = (keyboard_check(global.key_attack) || gamepad_button_check(0, global.key_attackC) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_shoulderl) || gamepad_button_check(0, gp_shoulderr) || gamepad_button_check(0, gp_shoulderl))
	key_attack2 = (keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(0, global.key_attackC) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_shoulderl) || gamepad_button_check_pressed(0, gp_shoulderr) || gamepad_button_check_pressed(0, gp_shoulderl))
	key_start = (keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(0, global.key_startC))
	key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_select))
	gamepad_set_axis_deadzone(0, 0.5)
}
