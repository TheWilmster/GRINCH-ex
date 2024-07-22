image_speed = 0.35
if (bump == 0)
{
    if (charging == 1 && place_meeting((x - 64), (y + 1), obj_solid))
        hsp = -1.5
    else if place_meeting((x + 64), (y + 1), obj_solid)
        hsp = 0
}
if (falling == 1)
{
    vsp = 10
    if place_meeting(x, (y + 1), obj_solid)
        instance_destroy()
}
if (bump == 1)
{
}
if place_meeting((x - 1), y, obj_player)
{
    if (obj_player.mach2 >= 35 || obj_player.state == 63 || obj_player.state == 36 || obj_player.state == 75)
    {
        obj_player.state = 46
        obj_player.image_index = 0
        hsp = 10
        bump = 1
        alarm[0] = 25
    }
}
scr_collideandmove()
