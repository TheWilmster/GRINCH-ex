shader_set(shdr_wind)
shader_set_uniform_f(uTime, (current_time / 1000))
draw_background_tiled(santa, -camera_get_view_x(view_camera[0]) * 0.01, -camera_get_view_y(view_camera[0]) * 0.01)
shader_reset()
