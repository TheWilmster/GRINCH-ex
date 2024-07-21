switch state
{
    case 82:
        scr_enemy_idle()
        break
    case 84:
        scr_enemy_turn()
        break
    case 88:
        scr_enemy_walk()
        break
    case 90:
        scr_enemy_land()
        break
    case 91:
        scr_enemy_hit()
        break
    case 92:
        scr_enemy_stun()
        break
    case 95:
        scr_enemy_grabbed()
        break
}

if (state == 92 && stunned > 40 && birdcreated == 0)
{
    birdcreated = 1
    with (instance_create(x, y, obj_enemybird))
        ID = other.id
}
if (state != 92)
    birdcreated = 0
if (!instance_exists(obj_slaphitbox2))
    slapped = 0
if (flash == 1 && alarm[2] <= 0)
    alarm[2] = (0.15 * room_speed)
if (hp <= 0)
    instance_destroy()
if (hitboxcreate == 0 && (state == 82 || state == 88))
{
    hitboxcreate = 1
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id
}
if (state != 95)
    depth = 0
if place_meeting(x, (y + 1), obj_collisionparent)
    grounded = 1
else
    grounded = 0
if (state != 92)
    thrown = 0
