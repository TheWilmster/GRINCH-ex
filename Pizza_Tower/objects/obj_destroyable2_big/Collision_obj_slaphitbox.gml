hp -= 1
instance_create((x + 16), y, obj_debris)
instance_create((x + 16), y, obj_debris)
instance_create((x + 16), y, obj_debris)
if (hp == 0)
    instance_destroy()
