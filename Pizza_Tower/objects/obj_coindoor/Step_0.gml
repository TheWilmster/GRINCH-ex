if (visited == 1)
    sprite_index = spr_coindooropen
ini_open("saveData.ini")
global.b1 = ini_read_string("Coins Door", "b1", "close")
global.b2 = ini_read_string("Coins Door", "b2", "close")
ini_close()
if ((global.b1 == "open" && door == "b1") || (global.b2 == "open" && door == "b2"))
    visited = 1
