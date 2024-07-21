audio_master_gain(0.5)
if (room == dance_room)
{
    if (obj_jukebox.playing == 0)
        currentlyplaying = music_null
}
if (jingle == 0)
{
    if (room == Realtitlescreen)
        currentlyplaying = music_title
    if (global.panic == 0)
    {
        if (room == PP_room1)
            currentlyplaying = music_funiculi
        if ((room == t1_r1 || room == t1_r22) && currentlyplaying != music_coldspag && obj_player.state != 53)
            currentlyplaying = music_coldspag2
        if ((room == t1_r11 || room == t1_r15) && obj_player.state != 53)
            currentlyplaying = music_coldspag
        if (room == t2_r1 && currentlyplaying != music_factory2 && obj_player.state != 53)
            currentlyplaying = music_factory1
        if ((room == t2_r8 || room == t2_r12) && obj_player.state != 53)
            currentlyplaying = music_factory2
        if (instance_exists(obj_noise) && obj_player.sprite_index != spr_player_idle)
            currentlyplaying = music_knight
        if (instance_exists(obj_player) && obj_player.state == 53)
            currentlyplaying = sound_treasuregot
        if instance_exists(obj_noise)
        {
            if (obj_noise.hspeed != 0)
                currentlyplaying = music_noiseappear
        }
        if (room == AT_pillar || room == t2_pillar)
            currentlyplaying = music_scary
        if (room == credit_room)
            currentlyplaying = music_title
    }
    if (room == HAT_room1)
        currentlyplaying = music_tutorial
}
if (instance_exists(obj_player) && obj_player.state != 53 && room != rank_room && room != timesuproom && obj_player.state != 12)
    jingle = 0
if (global.panic == 1)
{
    if (room == b1_r1 && obj_player.state != 12)
        currentlyplaying = music_basement1
    if (room == floor1_room0)
        currentlyplaying = christmasmusic
    if (room == b2_r1 && obj_player.state != 12)
        currentlyplaying = music_basement2
}
if (global.panic == 1 && currentlyplaying != music_tutorial && currentlyplaying != music_basement1 && currentlyplaying != christmasmusic && currentlyplaying != music_basement2 && (!audio_is_playing(music_noiseappear)))
    currentlyplaying = sound_firstescapetheme
if (jingle == 0)
{
    if (!audio_is_playing(currentlyplaying))
    {
        audio_stop_all()
        scr_sound(currentlyplaying)
    }
    if audio_is_paused(currentlyplaying)
    {
        audio_pause_all()
        audio_resume_sound(currentlyplaying)
    }
}
if (room == rank_room)
{
    currentlyplaying = 95
    jingle = 1
    if (global.rank == "s")
    {
        if (!audio_is_playing(music_ranks))
            audio_play_sound(music_ranks, 1, false)
    }
    else if (global.rank == "a")
    {
        if (!audio_is_playing(music_ranka))
            audio_play_sound(music_ranka, 1, false)
    }
    else if (global.rank == "b" || global.rank == "c")
    {
        if (!audio_is_playing(music_rankb))
            audio_play_sound(music_rankb, 1, false)
    }
    else if (global.rank == "d")
    {
        if (!audio_is_playing(music_rankd))
            audio_play_sound(music_rankd, 1, false)
    }
}
if (room == timesuproom)
{
    audio_stop_all()
    jingle = 1
}
