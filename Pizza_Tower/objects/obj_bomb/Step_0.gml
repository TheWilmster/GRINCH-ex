countdown -= 0.5
if (place_meeting((x + 1), y, obj_bombblock) || place_meeting((x - 1), y, obj_bombblock) || place_meeting(x, (y - 1), obj_bombblock) || place_meeting(x, (y + 1), obj_bombblock))
    instance_create(x, y, obj_bombexplosion)
if (place_meeting((x + 1), y, obj_enemiesbumpable) || place_meeting((x - 1), y, obj_enemiesbumpable))
    drop = 1
if (place_meeting(x, (y + 1), obj_enemiesbumpable) && drop == 1)
    hsp = 0
if (drop == 1)
{
    if (vsp < 12)
        vsp += grav
}
if (countdown < 50)
    sprite_index = spr_bomblit
if (countdown == 0)
{
    scr_sound(sound_explosion)
    instance_destroy()
    instance_create(x, y, obj_bombexplosion)
}
if place_meeting((x + floor(hsp)), y, obj_enemiesbumpable)
{
    x = floor(x)
    while (!(place_meeting((x + sign(hsp)), y, obj_enemiesbumpable)))
        x += sign(hsp)
    hsp = 0
}
x += hsp
if place_meeting(x, (y + floor(vsp)), obj_enemiesbumpable)
{
    y = floor(y)
    while (!(place_meeting(x, (y + sign(vsp)), obj_enemiesbumpable)))
        y += sign(vsp)
    vsp = 0
}
y += floor(vsp)
