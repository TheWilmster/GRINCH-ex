if ((state == 47 || state == 52 || state == 59) && other.drop == 0)
{
    state = 64
    image_xscale = -1
    other.hooked = 1
    if (mach2 >= 35)
        other.hspeed = -10
    if (other.hspeed == -10)
        sprite_index = spr_player_hangslide
    if (other.hspeed == 0)
        sprite_index = spr_player_hang
}
