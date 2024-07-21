function scr_pizzagoblin_throw()
{
	hsp = 0
	if (floor(image_index) == 2 && bombreset == 0)
	{
	    bombreset = 200
	    if (object_index == obj_pizzagoblin)
	    {
	        with (instance_create(x, y, obj_bomb))
	            hsp = (other.image_xscale * 8)
	    }
	    if (object_index == obj_cheeserobot)
	    {
	        with (instance_create(x, y, obj_cheeseblob))
	        {
	            sprite_index = spr_cheeserobot_goop
	            image_xscale = other.image_xscale
	            hsp = (other.image_xscale * 8)
	            vsp = 0
	            grav = 0
	        }
	    }
	    if (object_index == obj_robot)
	    {
	        with (instance_create(x, y, obj_robotknife))
	        {
	            image_xscale = other.image_xscale
	            hsp = (other.image_xscale * 8)
	        }
	    }
	}
	if (floor(image_index) == (image_number - 1) && (place_meeting(x, (y + 1), obj_enemiesbumpable) || place_meeting(x, (y + 1), obj_onewaywall)))
	{
	    state = 82
	    image_index = 0
	}
	if ((!((place_meeting(x, (y + 1), obj_enemiesbumpable) || place_meeting(x, (y + 1), obj_onewaywall)))) && hsp < 0)
	    hsp += 0.1
	else if ((!((place_meeting(x, (y + 1), obj_enemiesbumpable) || place_meeting(x, (y + 1), obj_onewaywall)))) && hsp > 0)
	    hsp -= 0.1
	if (object_index == obj_pizzagoblin)
	    sprite_index = spr_pizzagoblin_throwbomb
	if (object_index == obj_robot)
	    sprite_index = spr_robot_attack
	if (object_index == obj_cheeserobot)
	    sprite_index = spr_cheeserobot_attack
	image_speed = 0.35
	scr_collideandmoveonlywall()
}
