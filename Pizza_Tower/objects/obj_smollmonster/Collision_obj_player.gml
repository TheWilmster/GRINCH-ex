with (obj_player)
{
    if (state != 62 && state != 59 && state != 79 && state != 67 && state != 63 && state != 75 && state != 61 && hurted == 0 && barrel == 0)
    {
        state = 62
        obj_player.image_index = 0
        obj_player.flash = 1
        obj_player.hsp = (sign((x - other.x)) * 5)
        if (!(place_meeting(x, (y + 1), obj_solid)))
        {
            hurtbounce = 1
            vsp = -5
        }
    }
    else if (barrel == 1 && state != 75)
    {
        barrel = 0
        state = 62
        obj_player.image_index = 0
        obj_player.flash = 1
        obj_player.hsp = (sign((x - other.x)) * 5)
        if (!(place_meeting(x, (y + 1), obj_solid)))
        {
            hurtbounce = 1
            vsp = -5
        }
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    }
}
if ((obj_player.mach2 >= 35 || obj_player.state == 63 || obj_player.state == 36) && obj_player.state != 75)
{
    instance_create(x, y, obj_100)
    global.collect += 100
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
    instance_destroy()
    with (obj_player)
    {
        state = 36
        machslideAnim = 1
        image_index = 0
    }
}
if (obj_player.state == 75)
{
    instance_create(x, y, obj_100)
    global.collect += 100
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
    instance_destroy()
}
