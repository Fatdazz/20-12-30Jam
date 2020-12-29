

var _w = 1900;
var _h = 1000;

// Set up camera for view[0] (player 1)
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = _w; // We want the window to be 960x540 so set the view port to half the width
view_hport[0] = _h;
view_camera[0] = camera_create_view(0, 0, _w , _h);


// Set up camera for view[0] (player 2)
//view_visible[1] = true;
//view_xport[1] = 0; // Offset the second view for player two within the game window
//view_yport[1] = _h / 4;
//view_wport[1] = _w;
//view_hport[1] = _h / 4;
//view_camera[1] = camera_create_view(0, 0, _w / 2, _h, 0, obj_player_2, -1, -1, _w, _h);

//// Set up camera for view[0] (player 1)

//view_visible[2] = true;
//view_xport[2] = 0;
//view_yport[2] = 2*_h / 4;
//view_wport[2] = _w; // We want the window to be 960x540 so set the view port to half the width
//view_hport[2] = _h / 4;
//view_camera[2] = camera_create_view(0, 0, _w / 2, _h, 0, obj_player_1, -1, -1, _w, _h);

//// Set up camera for view[0] (player 2)
//view_visible[3] = true;
//view_xport[3] = 0; // Offset the second view for player two within the game window
//view_yport[3] = 3 * _h / 4;
//view_wport[3] = _w;
//view_hport[3] = _h/4;
//view_camera[4] = camera_create_view(0, 0, _w / 2, _h, 0, obj_player_2, -1, -1, _w, _h);



//// Resize the game window and the app surface to accomodate both view ports
//var _dx = display_get_width() / 2;
//var _dy = display_get_height() / 2;
//window_set_rectangle(_dx - (_w / 2), _dy - (_h / 2), _w, _h);
//surface_resize(application_surface, _w, _h);


window_set_rectangle(0,0,1900,1000);
surface_resize(application_surface, _w, _h);
