if (global.panic == 1)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_collisionparent) && x > (other.x + 32) && x < (other.x + 160) && key_up)
        {
            if (global.collect >= 2200)
                global.rank = "s"
            else if (global.collect > 2000)
                global.rank = "a"
            else if (global.collect > 1500)
                global.rank = "b"
            else if (global.collect > 1000)
                global.rank = "c"
            else
                global.rank = "d"
            ini_open("saveData.ini")
            if (room == t1_r1)
            {
                if (global.pizzacoin == 5)
                    ini_write_string("Coins Door", "b1", "open")
                if (global.rank == "s")
                    ini_write_string("Ranks", "t1", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "t1", "none"))
                    ini_write_string("Ranks", "t1", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "t1", "none") && "a" != ini_read_string("Ranks", "t1", "none"))
                    ini_write_string("Ranks", "t1", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "t1", "none") && "a" != ini_read_string("Ranks", "t1", "none") && "b" != ini_read_string("Ranks", "t1", "none"))
                    ini_write_string("Ranks", "t1", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "t1", "none") && "a" != ini_read_string("Ranks", "t1", "none") && "b" != ini_read_string("Ranks", "t1", "none") && "c" != ini_read_string("Ranks", "t1", "none"))
                    ini_write_string("Ranks", "t1", global.rank)
            }
            if (room == t2_r1)
            {
                if (global.pizzacoin == 5)
                    ini_write_string("Coins Door", "b2", "open")
                ini_open("saveData.ini")
                if (global.rank == "s")
                    ini_write_string("Ranks", "t2", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "t2", "none"))
                    ini_write_string("Ranks", "t2", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "t2", "none") && "a" != ini_read_string("Ranks", "t2", "none"))
                    ini_write_string("Ranks", "t2", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "t2", "none") && "a" != ini_read_string("Ranks", "t2", "none") && "b" != ini_read_string("Ranks", "t2", "none"))
                    ini_write_string("Ranks", "t2", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "t2", "none") && "a" != ini_read_string("Ranks", "t2", "none") && "b" != ini_read_string("Ranks", "t2", "none") && "c" != ini_read_string("Ranks", "t2", "none"))
                    ini_write_string("Ranks", "t2", global.rank)
            }
            ini_close()
            if (!instance_exists(obj_endlevelfade))
                instance_create(x, y, obj_endlevelfade)
            if (state != 67)
            {
                state = 67
                obj_endlevelfade.alarm[0] = 235
                image_index = 0
            }
        }
    }
}
