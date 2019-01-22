/// @description Draw The Player and Gun
var dir = point_direction(x, y, mouse_x, mouse_y);
var flipped = (mouse_x > x)*2-1;

// Draw The Player
draw_sprite_ext(s_player, 0, x, y, x_scale_*flipped, y_scale_, 0, image_blend, image_alpha);

// Draw The Gun
draw_sprite_ext(X_gun, 0, x+4*flipped, y, 1, flipped, dir, image_blend, image_alpha);
