if (slapped == 0)
{
    hp -= 1
    state = 92
    instance_create(x, y, obj_slapstar)
    instance_create(x, y, obj_baddiegibs)
    flash = 1
    instance_create(x, y, obj_bumpeffect)
    stunned = 40
    if (x != other.x)
        image_xscale = (-(sign((other.x - x))))
    vsp = -5
    hsp = ((-image_xscale) * 3)
}
