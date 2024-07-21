with (obj_player)
{
    switch state
    {
        case 0:
            scr_player_normal()
            break
        case 4:
            scr_player_slap()
            break
        case 1:
            scr_player_cheesepep()
            break
        case 2:
            scr_player_cheesepepstick()
            break
        case 3:
            scr_player_boxxedpep()
            break
        case 5:
            scr_player_pistolaim()
            break
        case 6:
            scr_player_climbwall()
            break
        case 7:
            scr_player_knightpepslopes()
            break
        case 8:
            scr_player_portal()
            break
        case 9:
            scr_player_secondjump()
            break
        case 10:
            scr_player_chainsawbump()
            break
        case 11:
            scr_player_handstandjump()
            break
        case 12:
            scr_player_gottreasure()
            break
        case 13:
            scr_player_knightpep()
            break
        case 14:
            scr_player_knightpepattack()
            break
        case 15:
            scr_player_meteorpep()
            break
        case 16:
            scr_player_bombpep()
            break
        case 17:
            scr_player_grabbing()
            break
        case 18:
            scr_player_chainsawpogo()
            break
        case 19:
            scr_player_shotgunjump()
            break
        case 20:
            scr_player_stunned()
            break
        case 21:
            scr_player_highjump()
            break
        case 22:
            scr_player_chainsaw()
            break
        case 23:
            scr_player_facestomp()
            break
        case 24:
            scr_player_mach4()
            break
        case 25:
            scr_player_timesup()
            break
        case 26:
            scr_player_machroll()
            break
        case 28:
            scr_player_pistol()
            break
        case 27:
            scr_player_shotgun()
            break
        case 29:
            scr_player_machfreefall()
            break
        case 30:
            scr_player_throw()
            break
        case 32:
            scr_player_superslam()
            break
        case 31:
            scr_player_slam()
            break
        case 33:
            scr_player_skateboard()
            break
        case 34:
            scr_player_grind()
            break
        case 35:
            scr_player_grab()
            break
        case 36:
            scr_player_punch()
            break
        case 37:
            scr_player_backkick()
            break
        case 38:
            scr_player_uppunch()
            break
        case 39:
            scr_player_shoulder()
            break
        case 40:
            scr_player_backbreaker()
            break
        case 41:
            scr_player_bossdefeat()
            break
        case 43:
            scr_player_bossintro()
            break
        case 51:
            scr_player_smirk()
            break
        case 42:
            scr_player_pizzathrow()
            break
        case 44:
            scr_player_gameover()
            break
        case 81:
            scr_player_Sjumpland()
            break
        case 80:
            scr_player_freefallprep()
            break
        case 78:
            scr_player_runonball()
            break
        case 77:
            scr_player_boulder()
            break
        case 45:
            scr_player_keyget()
            break
        case 46:
            scr_player_tackle()
            break
        case 49:
            scr_player_slipnslide()
            break
        case 48:
            scr_player_ladder()
            break
        case 47:
            scr_player_jump()
            break
        case 53:
            scr_player_victory()
            break
        case 50:
            scr_player_comingoutdoor()
            break
        case 52:
            scr_player_Sjump()
            break
        case 54:
            scr_player_Sjumpprep()
            break
        case 55:
            scr_player_crouch()
            break
        case 56:
            scr_player_crouchjump()
            break
        case 57:
            scr_player_crouchslide()
            break
        case 58:
            scr_player_mach1()
            break
        case 59:
            scr_player_mach2()
            break
        case 79:
            scr_player_mach3()
            break
        case 60:
            scr_player_machslide()
            break
        case 61:
            scr_player_bump()
            break
        case 62:
            scr_player_hurt()
            break
        case 63:
            scr_player_freefall()
            break
        case 66:
            scr_player_freefallland()
            break
        case 64:
            scr_player_hang()
            break
        case 67:
            scr_player_door()
            break
        case 73:
            scr_player_barrelnormal()
            break
        case 72:
            scr_player_barrelfall()
            break
        case 71:
            scr_player_barrelmach1()
            break
        case 70:
            scr_player_barrelmach2()
            break
        case 69:
            scr_player_barrelfloat()
            break
        case 68:
            scr_player_barrelcrouch()
            break
        case 74:
            scr_player_barrelslipnslide()
            break
        case 75:
            scr_player_barrelroll()
            break
        case 76:
            scr_player_current()
            break
    }

    if (state == 58 && place_meeting(x, (y + 1), obj_collisionparent))
    {
        if (!audio_is_playing(sound_dash1))
            scr_sound(sound_dash1)
    }
    else
        audio_stop_sound(sound_dash1)
    if (state == 59)
    {
        if (!audio_is_playing(sound_dash2))
            scr_sound(sound_dash2)
    }
    else
        audio_stop_sound(sound_dash2)
    if (state == 79)
    {
        if (!audio_is_playing(sound_maxspeed))
            scr_sound(sound_maxspeed)
    }
    else
        audio_stop_sound(sound_maxspeed)
    if (state == 26)
    {
        if (!audio_is_playing(sound_machroll))
            scr_sound(sound_machroll)
    }
    else
        audio_stop_sound(sound_machroll)
    if (state == 54)
    {
    }
    else
        audio_stop_sound(sound_superjumpcharge2)
    if (suplexmove == 1 && place_meeting(x, (y + 1), obj_collisionparent))
        suplexmove = 0
    if (state != 0 && state != 47 && state != 55 && state != 35 && state != 30)
        shotgunAnim = 0
    if (obj_player.state != 11)
        grav = 0.5
    if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
        instance_create((x + random_range(-5, dancer5)), (y + 46), obj_vomit)
    if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
    {
        with (instance_create((x + random_range(-5, dancer5)), (y + 46), obj_vomit))
            sprite_index = spr_vomit2
    }
    if (global.combotime > 0)
        global.combotime -= 0.5
    if (global.combotime == 0 && global.combo != 0)
        global.combo = 0
    if (input_buffer_jump < 8)
        input_buffer_jump++
    if (input_buffer_secondjump < 8)
        input_buffer_secondjump++
    if (input_buffer_highjump < 8)
        input_buffer_highjump++
    if (slapbuffer < 8)
        slapbuffer++
    if (key_particles == 1)
        instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
    if ((!(place_meeting((x + sign(hsp)), y, obj_collisionparent))) && (!(place_meeting((x + sign(hsp)), (y + 1), obj_collisionparent))) && place_meeting((x + sign(hsp)), (y + 2), obj_collisionparent))
        goingdownslope = 1
    else
        goingdownslope = 0
    if (place_meeting((x + sign(hsp)), y, obj_collisionparent) && (!(place_meeting((x + sign(hsp)), (y - 1), obj_collisionparent))))
        goingupslope = 1
    else
        goingupslope = 0
    if (inv_frames == 0 && hurted == 0)
        image_alpha = 1
    if (state == 59 || state == 33 || state == 13 || state == 3 || state == 1 || state == 7 || state == 14 || state == 16 || state == 23 || state == 29 || state == 23 || state == 26 || state == 79 || state == 32 || state == 63 || state == 52)
        attacking = 1
    else
        attacking = 0
    if (state == 30 || state == 36 || state == 37 || state == 39 || state == 38)
        grabbing = 1
    else
        grabbing = 0
    if (state == 79 || state == 33 || state == 24 || state == 63 || state == 32 || state == 52 || state == 26 || state == 29)
        instakillmove = 1
    else
        instakillmove = 0
    if (flash == 1 && alarm[0] <= 0)
        alarm[0] = (0.15 * room_speed)
    if (state != 79 && state != 60)
        autodash = 0
    if ((state != 47 && state != 56 && state != 4) || vsp < 0)
        fallinganimation = 0
    if (state != 66 && state != 0 && state != 60)
        facehurt = 0
    if (state != 0 && state != 60)
        machslideAnim = 0
    if (state != 0)
    {
        idle = 0
        dashdust = 0
    }
    if (state != 58 && state != 47 && state != 11 && state != 0 && state != 59 && state != 79 && state != 80 && state != 13 && state != 27 && state != 7)
        momemtum = 0
    if (state != 22)
        chainsaw = 50
    if (movespeed < 8)
        dashdust = 0
    if (state != 52 && state != 54)
        a = 0
    if (state != 35 && state != 30 && state != 39 && state != 36 && state != 37 && state != 38 && state != 31)
        throwforce = 0
    if (state != 23)
        facestompAnim = 0
    if (state != 28 && state != 27 && state != 19)
        shoot = 1
    if (state != 31)
        slamming = 0
    if (state != 63 && state != 23 && state != 32 && state != 66)
        superslam = 0
    if (state != 59)
        machpunchAnim = 0
    if (state != 59)
        machfreefall = 0
    if (state != 47)
        ladderbuffer = 0
    if (state != 47)
        stompAnim = 0
    if ((state == 79 || state == 59 || state == 26 || state == 11 || (state == 60 && mach2 >= 100)) && (!instance_exists(obj_mach3effect)))
    {
        toomuchalarm1 = 6
        instance_create(x, y, obj_mach3effect)
    }
    if (toomuchalarm1 > 0)
    {
        toomuchalarm1 -= 1
        if (toomuchalarm1 <= 0 && (state == 79 || state == 59 || (state == 60 && mach2 >= 100) || state == 26 || state == 11 || (state == 22 && mach2 >= 100)))
        {
            instance_create(x, y, obj_mach3effect)
            toomuchalarm1 = 6
        }
    }
    if (state != 63 && state != 32)
        obj_camera.zoom = 0
    if (state != 61 && state != 55 && state != 3 && state != 28 && sprite_index != spr_player_crouchshoot && state != 54 && state != 22 && state != 26 && state != 62 && state != 57 && state != 56)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
    if (state == 12 || sprite_index == spr_knightpep_start || sprite_index == spr_knightpep_thunder || state == 45 || state == 67 || state == 53 || state == 50)
        cutscene = 1
    else
        cutscene = 0
    if (state != 62)
        hurtsound = sound_pizzagot
    if ((place_meeting(x, y, obj_door) || (place_meeting(x, y, obj_keydoor) && global.keyget == 1) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && place_meeting(x, (y + 1), obj_collisionparent) && state == 0)
        instance_create(x, y, obj_uparrow)
    if (global.hp <= 0 && room != timesuproom)
    {
        state = 25
        room = timesuproom
    }
    if (state == 59 && (!instance_exists(obj_speedlines)))
        instance_create(x, y, obj_speedlines)
}
