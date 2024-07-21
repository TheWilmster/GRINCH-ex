font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0)
draw_set_font(font)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_sprite_ext(tvsprite, -1, 832, 74, 1, 1, 1, c_white, alpha)
if (obj_player.y < 200 && obj_player.x > (room_width - 200))
    alpha = 0.5
else
    alpha = 1
draw_text(xi, yi, message)
if (global.collect > 2000 && shownranka == 0)
{
    image_speed = 0
    message = "YOU GOT ENOUGH FOR RANK A"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvranka
    shownranka = 1
}
else if (global.collect > 1500 && shownrankb == 0)
{
    image_speed = 0
    message = "YOU GOT ENOUGH FOR RANK B"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankb
    shownrankb = 1
}
else if (global.collect > 1000 && shownrankc == 0)
{
    image_speed = 0
    message = "YOU GOT ENOUGH FOR RANK C"
    showtext = 1
    alarm[0] = 200
    tvsprite = spr_tvrankc
    shownrankc = 1
}
else if (obj_player.state == 62)
{
    image_speed = 0.1
    showtext = 1
    if (chose == 0)
        message = choose("OW!", "OUCH!", "OH!", "WOH!")
    alarm[0] = 50
    chose = 1
    tvsprite = spr_tvhurt
    once = 1
}
else if (obj_player.state == 25)
{
    alarm[0] = 50
    image_speed = 0.1
    tvsprite = spr_tvskull
}
else if (global.hurtcounter >= global.hurtmilestone)
{
    alarm[0] = 150
    image_speed = 0.1
    message = (("YOU HAVE HURT PEPPINO " + string(global.hurtmilestone)) + " TIMES...")
    if (tvsprite != spr_tvtalking1 && tvsprite != spr_tvtalking2 && tvsprite != spr_tvtalking3 && tvsprite != spr_tvtalking4)
        tvsprite = choose(spr_tvtalking1, spr_tvtalking2, spr_tvtalking3, spr_tvtalking4)
    global.hurtmilestone += 3
}
else if (obj_player.state == 33)
{
    showtext = 1
    message = "SWEET DUDE!!"
    alarm[0] = 50
    tvsprite = spr_tvrad
    once = 1
}
else if (obj_player.state == 49)
{
    image_speed = 0.1
    showtext = 1
    message = "OOPS!!"
    alarm[0] = 50
    tvsprite = spr_tvbanana
    once = 1
}
else if (global.combo != 0 && global.combotime != 0 && (tvsprite == spr_tvdefault || tvsprite == spr_tvcombo))
{
    draw_text(852, 75, global.combo)
    tvsprite = spr_tvcombo
    image_speed = 0
    if (global.combo >= 4)
        imageindexstore = 3
    else if (global.combo == 3)
        imageindexstore = 2
    else if (global.combo == 2)
        imageindexstore = 1
    else if (global.combo == 1)
        imageindexstore = 0
}
else if (global.combotime == 0 && tvsprite == spr_tvcombo)
{
    tvsprite = spr_tvcomboresult
    if (imageindexstore == 3)
        image_index = 3
    else if (imageindexstore == 2)
        image_index = 2
    else if (imageindexstore == 1)
        image_index = 1
    else if (imageindexstore == 0)
        image_index = 0
    alarm[0] = 50
}
else if (tvsprite == spr_tvdefault)
{
    chose = 0
    draw_text(832, 60, global.collect)
}
if (obj_player.state == 45)
{
    showtext = 1
    message = "NOW GO TO THE NEXT FLOOR!!"
    alarm[0] = 50
}
if instance_exists(obj_noise)
{
    if (obj_noise.hsp != 0 && global.panic == 0)
    {
        showtext = 1
        message = "UH OH..."
        alarm[0] = 50
    }
}
