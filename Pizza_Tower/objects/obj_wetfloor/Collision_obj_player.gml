with (obj_player)
{
    if (state == 58 || state == 59 || state == 60 || state == 49)
    {
        state = 49
        if (movespeed < 8)
            movespeed = 8
    }
    if (state == 71 || state == 70)
    {
        image_index = 0
        state = 74
        if (movespeed < 8)
            movespeed = 8
    }
}
