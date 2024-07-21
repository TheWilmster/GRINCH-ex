if (obj_player.state != 62 && global.cheesefollow == 0)
{
    if (global.toppintotal < 5)
        obj_tv.message = (("YOU NEED " + string((5 - global.toppintotal))) + " MORE TOPPINS!")
    if (global.toppintotal == 5)
        obj_tv.message = "YOU HAVE ALL TOPPINS!"
    obj_tv.showtext = 1
    obj_tv.alarm[0] = 150
    global.toppintotal += 1
    scr_sound(sound_toppingot)
    global.cheesefollow = 1
    panic = 0
}
