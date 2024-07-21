if (global.breaksound < 10)
    global.breaksound += 1
if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player) || place_meeting(x, (y + 1), obj_player) || place_meeting(x, (y - 1), obj_player)) && obj_player.state == 11)
    instance_destroy()
if (place_meeting(x, (y - 40), obj_player) && obj_player.state == 63)
{
    instance_destroy()
    tile_layer_delete_at(1, x, y)
}
if ((place_meeting((x + 1), y, obj_player) && obj_player.xscale == -1) || (place_meeting((x - 1), y, obj_player) && obj_player.xscale == 1))
{
    if (obj_player.state == 58)
    {
        obj_player.hsp = ((-obj_player.xscale) * 4)
        obj_player.vsp = -4
        obj_player.machpunchAnim = 1
        obj_player.image_index = 0
        obj_player.state = 46
        instance_destroy()
    }
}
if ((place_meeting((x + 1), y, obj_player) || place_meeting((x - 1), y, obj_player)) && (obj_player.state == 59 || obj_player.state == 13 || obj_player.state == 79 || obj_player.state == 26))
{
    if (obj_player.state == 59)
    {
        if (obj_player.machpunchAnim == 0)
        {
            obj_player.machpunchAnim = 1
            obj_player.image_index = 0
        }
    }
    instance_destroy()
}
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
