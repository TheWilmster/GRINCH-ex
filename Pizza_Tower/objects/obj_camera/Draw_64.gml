display_set_gui_size(960, 540)
pal_swap_set(spr_peppalette, global.paletteselect, 0)
if (obj_player.state != 44)
{
    if ((!audio_is_playing(va_happy1)) && (!audio_is_playing(va_happy2)) && (!audio_is_playing(va_happy3)))
    {
        if (!((obj_player.state == 58 || obj_player.state == 12 || obj_player.state == 43 || (obj_player.state == 43 && obj_player.sprite_index == spr_player_bossintro) || (obj_player.state == 43 && obj_player.sprite_index == spr_player_idle) || obj_player.state == 16 || obj_player.state == 26 || obj_player.state == 25 || obj_player.state == 22 || obj_player.state == 27 || obj_player.state == 31 || obj_player.state == 81 || obj_player.state == 35 || obj_player.state == 36 || obj_player.state == 40 || obj_player.state == 37 || obj_player.state == 38 || obj_player.state == 39 || obj_player.state == 46 || (obj_player.state == 43 && obj_player.sprite_index == spr_player_levelcomplete) || (obj_player.state == 66 && shake_mag > 0) || obj_player.state == 80 || obj_player.state == 63 || obj_player.state == 52 || obj_player.state == 54 || obj_player.state == 59 || obj_player.state == 79 || obj_player.state == 51 || obj_player.state == 62 || obj_player.state == 45 || obj_player.state == 53 || obj_player.state == 36)))
            draw_sprite_ext(spr_pepinoHUD, -1, 120, 80, 1, 1, 1, c_white, alpha)
        else if (obj_player.state == 81 || (obj_player.state == 66 && shake_mag > 0))
            draw_sprite_ext(spr_pepinoHUDstun, -1, 120, 80, 1, 1, 1, c_white, alpha)
        else if (obj_player.state == 53 || obj_player.state == 45 || obj_player.state == 51 || obj_player.state == 12 || (obj_player.state == 43 && obj_player.sprite_index == spr_player_levelcomplete))
            draw_sprite_ext(spr_pepinoHUDhappy, -1, 120, 80, 1, 1, 1, c_white, alpha)
        else if (obj_player.state == 58 || obj_player.state == 27 || obj_player.state == 22 || obj_player.state == 80 || obj_player.state == 63 || obj_player.state == 46 || obj_player.state == 52 || obj_player.state == 31 || obj_player.state == 54 || obj_player.state == 35 || obj_player.state == 36 || obj_player.state == 40 || obj_player.state == 37 || obj_player.state == 38 || obj_player.state == 39)
            draw_sprite_ext(spr_pepinoHUDmach1, -1, 120, 80, 1, 1, 1, c_white, alpha)
        else if (obj_player.state == 59)
            draw_sprite_ext(spr_pepinoHUDmach2, -1, 120, 80, 1, 1, 1, c_white, alpha)
        else if (obj_player.state == 79 || obj_player.state == 26)
            draw_sprite_ext(spr_pepinoHUDmach3, -1, 120, 80, 1, 1, 1, c_white, alpha)
        else if (obj_player.state == 62 || obj_player.state == 25 || obj_player.state == 16 || (obj_player.state == 43 && obj_player.sprite_index == spr_player_bossintro) || (obj_player.state == 43 && obj_player.sprite_index == spr_player_idle))
            draw_sprite_ext(spr_pepinoHUDhurt, -1, 120, 80, 1, 1, 1, c_white, alpha)
    }
    else
        draw_sprite_ext(spr_pepinoHUDhappy, -1, 120, 80, 1, 1, 1, c_white, alpha)
    shader_reset()
    if (obj_player.mach2 < 7)
        draw_sprite_ext(spr_speedbar, 0, 120, 120, 1, 1, 1, c_white, alpha)
    else if (obj_player.mach2 >= 7 && obj_player.mach2 < 35)
        draw_sprite_ext(spr_speedbar, 1, 120, 120, 1, 1, 1, c_white, alpha)
    else if (obj_player.mach2 >= 35 && obj_player.mach2 < 50)
        draw_sprite_ext(spr_speedbar, 2, 120, 120, 1, 1, 1, c_white, alpha)
    else if (obj_player.mach2 >= 50 && obj_player.mach2 < 75)
        draw_sprite_ext(spr_speedbar, 3, 120, 120, 1, 1, 1, c_white, alpha)
    else if (obj_player.mach2 >= 75 && obj_player.mach2 < 100)
        draw_sprite_ext(spr_speedbar, 4, 120, 120, 1, 1, 1, c_white, alpha)
    else if (obj_player.mach2 >= 100)
        draw_sprite_ext(spr_speedbarmax, -1, 120, 120, 1, 1, 1, c_white, alpha)
    if (obj_player.y < 200 && obj_player.x < 200)
        alpha = 0.5
    else
        alpha = 1
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
    draw_set_font(font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    if (timestop == 0)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), ((string(global.minutes) + ":0") + string(global.seconds)))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text((random_range(1, -1) + 480), (random_range(1, -1) + 65), ((string(global.minutes) + ":") + string(global.seconds)))
        }
    }
    if (global.key_inv == 1)
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha)
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha)
    if (global.ammo > 0)
    {
        draw_text(800, 450, global.ammo)
        draw_sprite(spr_ammo, -1, 840, 480)
    }
}
draw_set_blend_mode(bm_normal)
