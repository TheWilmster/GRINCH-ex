if place_meeting(x, (y - 1), obj_player)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_ladder) && key_down && state == 55 && place_meeting(x, (y + 1), obj_onewaywall))
        {
            y += 5
            state = 48
            x = (other.x + 16)
            y = floor(y)
            if ((y % 2) == 1)
                y -= 1
        }
    }
}
