with (obj_player)
{
    if (state == 0 && key_up && y == (other.y + 50))
    {
        if (other.visited == 1)
        {
            player_y = other.target_y
            player_x = other.target_x
            targetRoom = other.targetRoom
            other.visited = 1
            image_index = 0
            state = 67
            instance_create(x, y, obj_fadeout)
        }
    }
}
