with (obj_player)
{
    if (key_up && ladderbuffer == 0 && (state == 0 || state == 59 || state == 79 || state == 58 || state == 19 || state == 47 || state == 21) && state != 62 && state != 60 && state != 63 && state != 66)
    {
        mach2 = 0
        state = 48
        x = (other.x + 16)
        y = floor(y)
        if ((y % 2) == 1)
            y -= 1
    }
}
