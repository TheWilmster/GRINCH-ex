shader_set(shdr_wind)
shader_set_uniform_f(uTime, (current_time / 1000))
draw_background_tiled(spr_pizzagoblin_stunland, (lerp(0, (room_width - background_width[0]), (view_xview[(0 << 0)] / (room_width - view_wview[(0 << 0)]))) / 6), (lerp(0, (room_height - background_height[0]), (view_yview[(0 << 0)] / (room_height - view_hview[(0 << 0)]))) / 6))
shader_reset()
