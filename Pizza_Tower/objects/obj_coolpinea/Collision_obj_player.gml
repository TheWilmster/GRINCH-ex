if (state != 95)
{
    with (obj_player)
    {
        if (y < other.y && attacking == 0 && state == 47 && vsp > 0)
        {
            scr_sound(sound_stomp)
            if (vsp > 0)
            {
                other.stunned = 200
                if (x != other.x)
                    other.image_xscale = (-(sign((other.x - x))))
                image_index = 0
                if key_jump2
                {
                    other.vsp = -5
                    other.hsp = ((-other.image_xscale) * 3)
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = 92
                    stompAnim = 1
                    other.image_index = 0
                    vsp = -14
                    sprite_index = spr_player_stompprep
                }
                else
                {
                    other.vsp = -5
                    other.hsp = ((-other.image_xscale) * 3)
                    instance_create(x, (y + 50), obj_stompeffect)
                    other.state = 92
                    stompAnim = 1
                    other.image_index = 0
                    vsp = -9
                    sprite_index = spr_player_stompprep
                }
            }
        }
        if (state == 58)
        {
            instance_create(other.x, other.y, obj_slapstar)
            instance_create(other.x, other.y, obj_baddiegibs)
            other.flash = 1
            other.hp -= 1
            scr_sound(sound_tackleenemy)
            instance_create(x, y, obj_bumpeffect)
            other.stunned = 200
            if (x != other.x)
                other.image_xscale = (-(sign((other.x - x))))
            other.vsp = -5
            other.hsp = ((-other.image_xscale) * 3)
            hsp = ((-xscale) * 4)
            vsp = -4
            machpunchAnim = 1
            if (x != other.x)
                other.image_xscale = (-(sign((other.x - x))))
            other.state = 92
            image_index = 0
            state = 46
        }
        if ((state == 59 || state == 35) && other.grounded == 1)
        {
            instance_create(other.x, other.y, obj_slapstar)
            instance_create(other.x, other.y, obj_baddiegibs)
            other.flash = 1
            other.hp -= 1
            scr_sound(sound_tackleenemy)
            instance_create(x, y, obj_bumpeffect)
            other.vsp = -10
            other.hsp = xscale
            other.image_index = 0
            other.stunned = 200
            other.state = 92
            machpunchAnim = 1
            if ((!(place_meeting(x, (y + 1), obj_collisionparent))) && state != 63 && key_jump2)
            {
                sprite_index = spr_player_mach2jump
                vsp = -11
            }
        }
        if (attacking == 1 && state != 59)
        {
            if (state == 79)
                other.shot = 1
            image_index = 0
            instance_destroy(other.id)
            machpunchAnim = 1
            if ((!(place_meeting(x, (y + 1), obj_collisionparent))) && key_jump2)
                vsp = -11
        }
        if (attacking == 0 && state != 46 && state != 62 && (!(y < other.y)) && grabbing == 0 && other.state != 92)
        {
            if (x != other.x)
            {
                other.image_xscale = (-(sign((other.x - x))))
                xscale = (-(sign((x - other.x))))
            }
            hsp = ((-xscale) * 4)
            vsp = -4
            other.image_xscale = (-xscale)
            other.hsp = ((-other.image_xscale) * 4)
            other.vsp = -4
            if (other.state == 88 || other.state == 84)
                other.state = 82
            image_index = 0
            state = 61
            if (other.state == 90)
                other.state = 82
        }
    }
}
