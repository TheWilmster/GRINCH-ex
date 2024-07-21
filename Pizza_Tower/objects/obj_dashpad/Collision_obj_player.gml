with (obj_player)
{
    if (place_meeting(x, (y + 1), obj_collisionparent) && (state == 58 || state == 59))
    {
        xscale = other.image_xscale
        mach2 = 100
        scr_sound(sound_throw)
        machhitAnim = 0
        state = 79
        flash = 1
        sprite_index = spr_player_mach4
        instance_create(x, y, obj_jumpdust)
        instance_create(x, y, obj_mach3effect1)
        instance_create(x, y, obj_mach3effect2)
        movespeed = 12
    }
}
