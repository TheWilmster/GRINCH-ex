function scr_collideandmoveonlywall()
{
	var steps = abs(vsp)
	if (abs(vsp) <= 0)
	{
	}
	else
	{
	    repeat steps
	    {
	        if ((!(place_meeting(x, (y + sign(vsp)), obj_enemiesbumpable))) && (!((vsp >= 0 && place_meeting(x, (y + 1), obj_onewaywall) && (!(place_meeting(x, y, obj_onewaywall)))))))
	        {
	            y += sign(vsp)
	            steps = (abs(vsp) - 1)
	            if (abs(vsp) - 1)
	                continue
	            break
	        }
	        else
	            vsp = 0
	    }
	}
	steps = abs(hsp)
	if (abs(hsp) <= 0)
	{
	}
	else
	{
	    repeat steps
	    {
	        if (place_meeting((x + sign(hsp)), y, obj_enemiesbumpable) && place_meeting((x + sign(hsp)), (y - 1), obj_enemiesbumpable) && (!(place_meeting((x + sign(hsp)), (y - 2), obj_enemiesbumpable))))
	            y -= 2
	        else if (place_meeting((x + sign(hsp)), y, obj_enemiesbumpable) && (!(place_meeting((x + sign(hsp)), (y - 1), obj_enemiesbumpable))))
	            y--
	        if ((!(place_meeting((x + sign(hsp)), y, obj_enemiesbumpable))) && (!(place_meeting((x + sign(hsp)), (y + 1), obj_enemiesbumpable))) && (!(place_meeting((x + sign(hsp)), (y + 2), obj_enemiesbumpable))) && place_meeting((x + sign(hsp)), (y + 3), obj_enemiesbumpable))
	            y += 2
	        else if ((!(place_meeting((x + sign(hsp)), y, obj_enemiesbumpable))) && (!(place_meeting((x + sign(hsp)), (y + 1), obj_enemiesbumpable))) && place_meeting((x + sign(hsp)), (y + 2), obj_enemiesbumpable))
	            y++
	        if (!(place_meeting((x + sign(hsp)), y, obj_enemiesbumpable)))
	        {
	            x += sign(hsp)
	            steps = (abs(hsp) - 1)
	            if (abs(hsp) - 1)
	                continue
	            break
	        }
	        else
	            hsp = 0
	    }
	}
	if (vsp < 20)
	    vsp += grav
}
