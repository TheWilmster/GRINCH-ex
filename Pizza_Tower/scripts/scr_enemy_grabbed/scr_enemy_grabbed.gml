function scr_enemy_grabbed()
{
	image_xscale = (-obj_player.xscale)
	stunned = 200
	if (obj_player.state == 17 || obj_player.state == 35 || obj_player.state == 30)
	{
	    if (sprite_index == spr_player_suplexmash1 && floor(image_index) == 3)
	    {
	        instance_create(x, y, obj_slapstar)
	        instance_create(x, y, obj_baddiegibs)
	        flash = 1
	    }
	    x = (obj_player.x + (obj_player.xscale * 15))
	    y = obj_player.y
	    image_xscale = (-obj_player.xscale)
	}
	with (obj_player)
	{
	    suplexhavetomash = (other.hp - 1)
	    scr_getinput()
	    move = (key_left2 + key_right2)
	    if (key_attack2 && other.hp > 0 && (image_index > 3 || sprite_index == spr_player_grab))
	    {
	        global.combotime = 60
	        image_index = 0
	        sprite_index = choose(spr_player_suplexmash1, spr_player_suplexmash2, spr_player_suplexmash3, spr_player_suplexmash4)
	        other.hp -= 1
	        instance_create(other.x, other.y, obj_slapstar)
	        instance_create(other.x, other.y, obj_baddiegibs)
	        other.flash = 1
	        with (obj_camera)
	        {
	            shake_mag = 3
	            shake_mag_acc = (3 / room_speed)
	        }
	    }
	    if (!((state == 35 || state == 17 || state == 30 || state == 31 || state == 36 || state == 32 || state == 37 || state == 38 || state == 39)))
	    {
	        other.x = x
	        other.y = y
	        other.state = 92
	        other.image_index = 0
	    }
	}
	hsp = 0
	if (obj_player.state == 36 && floor(obj_player.image_index) == 2)
	{
	    instance_create((x + (obj_player.xscale * 30)), y, obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 92
	    hsp = ((-image_xscale) * 25)
	    vsp = -7
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 37 && floor(obj_player.image_index) == 2)
	{
	    instance_create((x + ((-obj_player.xscale) * 50)), y, obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 92
	    image_xscale *= -1
	    hsp = ((-image_xscale) * 20)
	    vsp = -7
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 39 && floor(obj_player.image_index) == 2)
	{
	    instance_create(x, (y + 20), obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 92
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 30 && floor(obj_player.image_index) == 2)
	{
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    state = 92
	    hsp = ((-image_xscale) * 10)
	    vsp = -10
	}
	if (obj_player.state == 38 && floor(obj_player.image_index) == 2)
	{
	    instance_create((x + ((-obj_player.xscale) * 15)), (y - 50), obj_bumpeffect)
	    alarm[1] = 5
	    thrown = 1
	    x = obj_player.x
	    y = obj_player.y
	    hsp = ((-image_xscale) * 2)
	    state = 92
	    vsp = -20
	    global.combotime = 60
	    instance_create(x, y, obj_slapstar)
	    instance_create(x, y, obj_baddiegibs)
	    flash = 1
	    with (obj_camera)
	    {
	        shake_mag = 3
	        shake_mag_acc = (3 / room_speed)
	    }
	}
	if (obj_player.state == 32)
	{
	    if (floor(obj_player.image_index) == 0)
	    {
	        depth = 0
	        x = (obj_player.x + (obj_player.xscale * 10))
	        y = obj_player.y
	    }
	    if (floor(obj_player.image_index) == 1)
	    {
	        depth = 0
	        x = (obj_player.x + (obj_player.xscale * 5))
	        y = obj_player.y
	    }
	    if (floor(obj_player.image_index) == 2)
	    {
	        depth = 0
	        x = obj_player.x
	        y = obj_player.y
	    }
	    if (floor(obj_player.image_index) == 3)
	    {
	        depth = 0
	        x = (obj_player.x + (obj_player.xscale * -5))
	        y = obj_player.y
	    }
	    if (floor(obj_player.image_index) == 4)
	    {
	        depth = 0
	        x = (obj_player.x + (obj_player.xscale * -10))
	        y = obj_player.y
	    }
	    if (floor(obj_player.image_index) == 5)
	    {
	        depth = -7
	        x = (obj_player.x + (obj_player.xscale * -5))
	        y = obj_player.y
	    }
	    if (floor(obj_player.image_index) == 6)
	    {
	        depth = -7
	        x = obj_player.x
	        y = obj_player.y
	    }
	    if (floor(obj_player.image_index) == 7)
	    {
	        depth = -7
	        x = (obj_player.x + (obj_player.xscale * 5))
	        y = obj_player.y
	    }
	    if (obj_player.sprite_index == spr_player_piledriverland)
	        instance_destroy()
	}
	sprite_index = grabbedspr
	image_speed = 0.35
}
