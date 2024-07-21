ini_open("saveData.ini")
global.t1_rank = ini_read_string("Ranks", "t1", "none")
global.t2_rank = ini_read_string("Ranks", "t2", "none")
ini_close()
if (levelsign == 1)
{
    if (global.t1_rank == "none")
        visible = false
    else
        visible = true
    if (global.t1_rank == "s")
        image_index = 0
    if (global.t1_rank == "a")
        image_index = 1
    if (global.t1_rank == "b")
        image_index = 2
    if (global.t1_rank == "c")
        image_index = 3
    if (global.t1_rank == "d")
        image_index = 4
}
if (levelsign == 2)
{
    if (global.t2_rank == "none")
        visible = false
    else
        visible = true
    if (global.t2_rank == "s")
        image_index = 0
    if (global.t2_rank == "a")
        image_index = 1
    if (global.t2_rank == "b")
        image_index = 2
    if (global.t2_rank == "c")
        image_index = 3
    if (global.t2_rank == "d")
        image_index = 4
}
if (!instance_exists(obj_goldendoor))
{
    if (global.t1_rank == "s" && global.t2_rank == "s")
    {
        with (instance_create(896, 352, obj_goldendoor))
        {
            targetRoom = dance_room
            target_x = 208
            target_y = 338
        }
    }
}
