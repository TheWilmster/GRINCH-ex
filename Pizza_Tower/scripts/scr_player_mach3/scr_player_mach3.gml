function scr_player_mach3()
{
	scr_getinput()
	if (windingAnim < 200)
	    windingAnim++
	if ((!(place_meeting(x, (y + 1), obj_railh))) && (!(place_meeting(x, (y + 1), obj_railh2))))
	    hsp = (xscale * movespeed)
	else if place_meeting(x, (y + 1), obj_railh)
	    hsp = ((xscale * movespeed) - 5)
	else if place_meeting(x, (y + 1), obj_railh2)
	    hsp = ((xscale * movespeed) + 5)
	mach2 = 100
	momemtum = 1
	move = (key_right + key_left)
	move2 = (key_right2 + key_left2)
	movespeed = 12
	crouchslideAnim = 1
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && place_meeting(x, (y + 1), obj_collisionparent) && (!((move == 1 && xscale == -1))) && (!((move == -1 && xscale == 1))) && key_attack)
	{
	    scr_sound(sound_jump)
	    image_index = 0
	    sprite_index = spr_player_mach3jump
	    vsp = -9
	}
	if (place_meeting(x, y, obj_collisionparent) || (sprite_index == spr_player_mach3jump && floor(image_index) == (image_number - 1)))
	    sprite_index = spr_player_mach4
	if key_jump
	    input_buffer_jump = 0
	if (key_up && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    scr_sound(sound_superjumpcharge1)
	    sprite_index = spr_player_superjumpprep
	    state = 54
	    hsp = 0
	    image_index = 0
	}
	if (move2 == xscale && autodash == 0)
	{
	    instance_create(x, y, obj_slaphitbox)
	    suplexmove = 1
	    vsp = 0
	    instance_create(x, y, obj_jumpdust)
	    image_index = 0
	    sprite_index = spr_player_suplexdash
	    state = 11
	}
	if ((!key_attack) && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    scr_sound(sound_maximumspeedstop)
	    sprite_index = spr_player_machslidestart
	    state = 60
	    image_index = 0
	    mach2 = 0
	}
	if (move == -1 && xscale == 1 && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    sprite_index = spr_player_machslideboost3
	    flash = 0
	    state = 60
	    image_index = 0
	    mach2 = 100
	}
	if (move == 1 && xscale == -1 && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    sprite_index = spr_player_machslideboost3
	    flash = 0
	    state = 60
	    image_index = 0
	    mach2 = 100
	}
	if (key_down && place_meeting(x, (y + 1), obj_collisionparent) && (!(place_meeting(x, y, obj_dashpad))))
	{
	    instance_create(x, y, obj_jumpdust)
	    flash = 0
	    state = 26
	}
	if (place_meeting((x + 1), y, obj_bumpable) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))) && (place_meeting(x, (y + 1), obj_collisionparent) || place_meeting((x + sign(hsp)), y, obj_railv)))
	{
	    scr_sound(sound_maximumspeedland)
	    with (obj_camera)
	    {
	        shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    hsp = 0
	    image_speed = 0.35
	    with (obj_baddie)
	    {
	        if point_in_rectangle(x, y, view_xview[0], view_yview[0], (view_xview[0] + view_wview[0]), (view_yview[0] + view_hview[0]))
	        {
	            stun = 1
	            alarm[0] = 200
	            ministun = 0
	            vsp = -5
	            hsp = 0
	            image_xscale *= -1
	        }
	    }
	    flash = 0
	    combo = 0
	    state = 61
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	if (place_meeting((x - 1), y, obj_bumpable) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))) && (place_meeting(x, (y + 1), obj_collisionparent) || place_meeting((x + sign(hsp)), y, obj_railv)))
	{
	    scr_sound(sound_maximumspeedland)
	    with (obj_camera)
	    {
	        shake_mag = 20
	        shake_mag_acc = (40 / room_speed)
	    }
	    hsp = 0
	    image_speed = 0.35
	    flash = 0
	    combo = 0
	    state = 61
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
	}
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	{
	    if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	    {
	        machhitAnim = 0
	        state = 6
	    }
	    else if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slopes))))
	    {
	        machhitAnim = 0
	        state = 6
	    }
	}
	if place_meeting(x, (y + 1), obj_onewaywatersolid)
	{
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	    instance_create((x - (xscale * 30)), (y + 40), obj_waterdrop)
	}
	if (!instance_exists(obj_chargeeffect))
	    instance_create(x, y, obj_chargeeffect)
	if ((!instance_exists(obj_superdashcloud)) && place_meeting(x, (y + 1), obj_collisionparent) && (!(place_meeting(x, (y + 1), obj_water))))
	    instance_create(x, y, obj_superdashcloud)
	if (key_slap2 && shotgunAnim == 1 && global.ammo > 0 && (!(place_meeting(x, (y + 1), obj_collisionparent))))
	{
	    global.ammo -= 1
	    instance_create(x, (y + 80), obj_shotgunbulletdown)
	    vsp -= 11
	    sprite_index = spr_player_shotgunjump1
	    state = 27
	    image_index = 0
	}
	image_speed = 0.4
	scr_collideandmove()
}
