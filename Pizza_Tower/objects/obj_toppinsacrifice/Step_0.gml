if (throwed == 1)
{
    if (vsp < 12)
        vsp += grav
}
if (global.shroomfollow == 1)
    sprite_index = spr_pizzakinshroom_panic
else if (global.cheesefollow == 1)
    sprite_index = spr_pizzakincheese_panic
else if (global.tomatofollow == 1)
    sprite_index = spr_pizzakintomato_panic
else if (global.sausagefollow == 1)
    sprite_index = spr_pizzakinsausage_panic
else if (global.pineapplefollow == 1)
    sprite_index = spr_pizzakinpineapple_panic
if place_meeting(x, y, obj_mouthhitbox)
{
    if (sprite_index == spr_pizzakinshroom_panic)
    {
        obj_pause.shroomdone = 1
        global.shroomfollow = 0
        instance_destroy(obj_pizzakinshroom)
    }
    if (sprite_index == spr_pizzakincheese_panic)
    {
        obj_pause.cheesedone = 1
        global.cheesefollow = 0
        instance_destroy(obj_pizzakincheese)
    }
    if (sprite_index == spr_pizzakintomato_panic)
    {
        obj_pause.tomatodone = 1
        global.tomatofollow = 0
        instance_destroy(obj_pizzakintomato)
    }
    if (sprite_index == spr_pizzakinsausage_panic)
    {
        obj_pause.sausagedone = 1
        global.sausagefollow = 0
        instance_destroy(obj_pizzakinsausage)
    }
    if (sprite_index == spr_pizzakinpineapple_panic)
    {
        obj_pause.pineappledone = 1
        global.pineapplefollow = 0
        instance_destroy(obj_pizzakinpineapple)
    }
    obj_tv.showtext = 1
    obj_tv.tvsprite = spr_tvpillar
    obj_tv.alarm[0] = 150
    obj_hungrypillar.eated = 1
    obj_hungrypillar.framereset = 0
    obj_hungrypillar.image_speed = 0.35
    obj_hungrypillar.toppineaten += 1
    if (obj_hungrypillar.toppineaten != 5)
        obj_tv.message = (("I NEED " + string((5 - obj_hungrypillar.toppineaten))) + " MORE...")
    else
        obj_tv.message = "THANK YOU VERY MUCH!!"
    instance_destroy()
    obj_tv.image_speed = 0.1
}
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
