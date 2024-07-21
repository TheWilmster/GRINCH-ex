if (obj_player.state != 43)
{
    with (instance_create(x, (y - 75), obj_press))
        ID = other.id
}
with (obj_player)
{
    hsp = 0
    if (other.drop == 0)
    {
        if (state != 43)
        {
            sprite_index = spr_player_hurt
            instance_create(x, y, obj_spikehurteffect)
        }
        if (key_jump || key_attack2 || key_slap2)
        {
            if place_meeting(x, (y + 1), obj_collisionparent)
            {
                vsp = -4
                other.press += 2
            }
        }
        state = 43
    }
}
if (floor(image_index) == 0)
    image_speed = 0.35
if (floor(image_index) == (image_number - 1))
    image_speed = 0
if (press < 8)
    closed = 1
