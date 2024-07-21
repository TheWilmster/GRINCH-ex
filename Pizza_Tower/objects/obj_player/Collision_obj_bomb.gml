if (hurted == 0 && state != 16 && state != 30 && other.countdown > 30)
{
    scr_sound(sound_touchspike)
    bombpeptimer = 200
    hsp = 0
    movespeed = 0
    image_index = 0
    state = 16
    sprite_index = spr_bombpep_intro
    instance_create((x + (image_xscale * 40)), y, obj_punchdust)
    instance_destroy(other.id)
}
