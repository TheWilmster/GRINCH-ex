if (global.collectsound < 5)
    global.collectsound += 1
if (drop == 1 && disappear == 0)
{
    alarm[4] = 400
    disappear = 1
}
if (balloon == 1 && (!(place_meeting(x, y, obj_balloon))))
    drop = 1
if place_meeting(x, (y + 1), obj_enemiesbumpable)
    hsp = 0
if (cantcollect == 1)
{
    if (flicker == 0)
    {
        alarm[1] = 3
        flicker = 1
    }
}
else if (cantcollect == 0)
    image_alpha = 1
if (drop == 1)
{
    image_alpha = 0.5
    if place_meeting((x + floor(hsp)), y, obj_null)
    {
        x = floor(x)
        while (!(place_meeting((x + sign(hsp)), y, obj_null)))
            x += sign(hsp)
        hsp = 0
    }
    x += hsp
    if place_meeting(x, (y + floor(vsp)), obj_null)
    {
        y = floor(y)
        while (!(place_meeting(x, (y + sign(vsp)), obj_null)))
            y += sign(vsp)
        vsp = 0
    }
    y += floor(vsp)
    if (vsp < 20)
        vsp += grav
}
