x = obj_player.x
if (obj_player.state == 55 || obj_player.state == 56 || obj_player.state == 57)
    y = (obj_player.y + 25)
else
    y = obj_player.y
image_xscale = obj_player.image_xscale
image_alpha = obj_player.image_alpha
image_speed = 0.35
if (obj_player.state == 62)
    sprite_index = spr_googlyeyeshurt
else if (obj_player.move != 0)
    sprite_index = spr_googlyeyesmove
else
    sprite_index = spr_googlyeyes
