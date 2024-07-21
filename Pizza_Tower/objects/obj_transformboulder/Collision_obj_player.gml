with (obj_player)
{
    if (state != 67)
    {
        state = 77
        x = other.x
        y = (other.y - 32)
        image_xscale = other.image_xscale
    }
}
