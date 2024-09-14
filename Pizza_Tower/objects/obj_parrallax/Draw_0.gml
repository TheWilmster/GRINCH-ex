if (!surface_exists(bg_surface)) {
	bg_surface = surface_create(room_width, room_height);
}

surface_set_target(bg_surface);
draw_background_tiled(santa, -camera_get_view_x(view_camera[0]) * 0.01, -camera_get_view_y(view_camera[0]) * 0.01)
surface_reset_target();

shader_set(shdr_wind)
shader_set_uniform_f(uTime, (current_time / 1000))
draw_surface(bg_surface, 0, 0);
shader_reset()
