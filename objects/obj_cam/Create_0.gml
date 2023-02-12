default_cam_height = 480;
default_cam_width = 640;

default_window_height = 480;
default_window_width = 640;
//camera_set_view_size(view_camera[0], default_cam_width, default_cam_height);
window_set_size(1, 1);//can't be 0, 0
window_set_size(default_window_width, default_window_height);
surface_resize(application_surface, default_cam_width+1, default_cam_height+1);
