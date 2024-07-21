if ((state == 47 || state == 52 || state == 59 || obj_player.state == 79) && other.drop == 0)
{
    mach2 = 0
    state = 64
    image_xscale = 1
    other.hooked = 1
    other.vspeed = -5
    if (other.hspeed == 10)
        sprite_index = spr_player_hangslide
    if (other.hspeed == 0)
        sprite_index = spr_player_hang
}
