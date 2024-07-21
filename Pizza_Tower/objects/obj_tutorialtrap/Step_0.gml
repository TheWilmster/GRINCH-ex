if (global.breaksound < 9)
    global.breaksound += 1
if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        if (!(place_meeting(x, (y + 1), obj_wall)))
        {
            movespeed = 0
            mach2 = 0
            state = 47
            sprite_index = spr_player_fall
            instance_destroy(obj_tutorialtrap)
            tile_layer_show(2)
            tile_layer_hide(1)
        }
    }
}
if (place_meeting(x, (y - 40), obj_player) && obj_player.state == 63)
{
    instance_destroy()
    tile_layer_delete_at(1, x, y)
    audio_sound_gain(sfx_break, 0.7, 0)
    if (!audio_is_playing(sfx_break))
        audio_play_sound(sfx_break, 1, false)
}
if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && (obj_player.state == 79 || obj_player.state == 26))
    instance_destroy()
if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0 && obj_player.state == 23)
{
    instance_destroy()
    obj_player.image_index = 0
    obj_player.vsp = -7
    obj_player.facestompAnim = 1
}
if (place_meeting(x, (y - 1), obj_player) && obj_player.vsp > 0 && (obj_player.state == 63 || obj_player.state == 32 || obj_player.state == 31 || obj_player.state == 13))
    instance_destroy()
if ((place_meeting(x, (y + 40), obj_player) || (place_meeting((x - 1), y, obj_player) && obj_player.xscale == 1) || (place_meeting((x + 1), y, obj_player) && obj_player.xscale == -1)) && obj_player.state == 52)
    instance_destroy()
if place_meeting(x, (y + 1), obj_player)
{
    with (obj_player)
    {
        if (key_jump && state == 55)
        {
            instance_destroy(other.id)
            vsp = 0
            jumpstop = 1
        }
    }
}
if (place_meeting(x, (y + 1), obj_player) && obj_player.vsp <= 0.5)
{
    with (obj_player)
    {
        if (!(place_meeting(x, (y + 1), obj_collisionparent)))
        {
            instance_destroy(other.id)
            vsp = 0
            jumpstop = 1
        }
    }
}
