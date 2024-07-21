function scr_player_mach2()
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
	move2 = (key_right2 + key_left2)
	move = (key_right + key_left)
	movespeed = 10
	crouchslideAnim = 1
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (machpunchAnim == 0 && sprite_index != spr_player_mach && sprite_index != spr_player_mach3 && sprite_index != spr_player_machhit)
	    {
	        if (sprite_index != spr_player_machhit)
	            sprite_index = spr_player_mach
	    }
	    if (machpunchAnim == 1)
	    {
	        if (punch == 0)
	            sprite_index = spr_player_machpunch1
	        if (punch == 1)
	            sprite_index = spr_player_machpunch2
	        if (floor(image_index) == 4 && sprite_index == spr_player_machpunch1)
	        {
	            punch = 1
	            machpunchAnim = 0
	        }
	        if (floor(image_index) == 4 && sprite_index == spr_player_machpunch2)
	        {
	            punch = 0
	            machpunchAnim = 0
	        }
	    }
	}
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	    machpunchAnim = 0
	if (!(place_meeting(x, (y + 1), obj_collisionparent)))
	{
	    if (move == -1 && xscale == 1)
	        movespeed = 8
	    if (move == 1 && xscale == -1)
	        movespeed = 8
	}
	if place_meeting(x, (y + 1), obj_collisionparent)
	{
	    if (mach2 < 100)
	        mach2 += 1.5
	    if (mach2 >= 100)
	    {
	        machhitAnim = 0
	        state = 79
	        flash = 1
	        sprite_index = spr_player_mach4
	        instance_create(x, y, obj_jumpdust)
	        instance_create(x, y, obj_mach3effect1)
	        instance_create(x, y, obj_mach3effect2)
	        movespeed = 8
	    }
	}
	if key_jump
	    input_buffer_jump = 0
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
	    sprite_index = spr_player_machslideboost
	    state = 60
	    image_index = 0
	    mach2 = 35
	}
	if (move == 1 && xscale == -1 && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    sprite_index = spr_player_machslideboost
	    state = 60
	    image_index = 0
	    mach2 = 35
	}
	if (key_down && place_meeting(x, (y + 1), obj_collisionparent))
	{
	    sprite_index = spr_player_crouchslip
	    machhitAnim = 0
	    state = 57
	}
	if ((!key_jump2) && jumpstop == 0 && vsp < 0.5)
	{
	    vsp /= 2
	    jumpstop = 1
	}
	if (place_meeting(x, (y + 1), obj_collisionparent) && vsp > 0)
	    jumpstop = 0
	if (input_buffer_jump < 8 && place_meeting(x, (y + 1), obj_collisionparent) && (!((move == 1 && xscale == -1))) && (!((move == -1 && xscale == 1))) && key_attack)
	{
	    image_index = 0
	    sprite_index = spr_player_secondjump1
	    scr_sound(sound_jump)
	    vsp = -9
	}
	if (place_meeting((x + 1), y, obj_collisionparent) && xscale == 1 && (!(place_meeting((x + 1), y, obj_slopes))) && (place_meeting(x, (y + 1), obj_collisionparent) || place_meeting((x + sign(hsp)), y, obj_railv)))
	{
	    scr_sound(sound_suplex1)
	    movespeed = 0
	    state = 61
	    hsp = -2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x + 10), (y + 10), obj_bumpeffect)
	}
	if (place_meeting((x - 1), y, obj_collisionparent) && xscale == -1 && (!(place_meeting((x - 1), y, obj_slopes))) && (place_meeting(x, (y + 1), obj_collisionparent) || place_meeting((x + sign(hsp)), y, obj_railv)))
	{
	    scr_sound(sound_suplex1)
	    movespeed = 0
	    state = 61
	    hsp = 2.5
	    vsp = -3
	    mach2 = 0
	    image_index = 0
	    instance_create((x - 10), (y + 10), obj_bumpeffect)
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
	if ((!instance_exists(obj_dashcloud)) && place_meeting(x, (y + 1), obj_collisionparent) && (!(place_meeting(x, (y + 1), obj_water))))
	    instance_create(x, y, obj_dashcloud)
	if (key_slap2 && shotgunAnim == 1 && global.ammo > 0 && (!(place_meeting(x, (y + 1), obj_collisionparent))))
	{
	    global.ammo -= 1
	    instance_create(x, (y + 80), obj_shotgunbulletdown)
	    vsp -= 11
	    sprite_index = spr_player_shotgunjump1
	    state = 27
	    image_index = 0
	}
	if ((!(place_meeting(x, (y + 1), obj_collisionparent))) && sprite_index != spr_player_secondjump2 && sprite_index != spr_player_mach2jump)
	    sprite_index = spr_player_secondjump1
	if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_secondjump1)
	    sprite_index = spr_player_secondjump2
	image_speed = 0.65
	scr_collideandmove()
}
