/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("Q"))){
	if window_get_fullscreen()
      {
      window_set_fullscreen(false);
	alarm[1]=6;//mac plays a litte animation when switching exiting full screen, and the screen must be resized after the animation is played
      }
   else
      {
      window_set_fullscreen(true);
	  camera_set_view_size(view_camera[0], display_get_width()/2, display_get_height()/2)
	  surface_resize(application_surface, display_get_width()/2, display_get_height()/2);
      }
}