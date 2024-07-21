if (cigar == 0)
    instance_create(x, y, obj_sausageman)
if (cigar == 1)
{
    with (instance_create(x, y, obj_sausageman))
        cigar = 1
}
