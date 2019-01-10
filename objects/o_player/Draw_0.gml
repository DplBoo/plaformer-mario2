/// @description Draw The Player and Gun
var dir = point_direction(x, y, mouse_x, mouse_y);
var xscale = (mouse_x > x)*2-1;

// Draw The Player
draw_sprite_ext(s_player, 0, x, y, xscale, 1, 0, image_blend, image_alpha);

// Draw The Gun

draw_sprite_ext(X_gun, 0, x, y, 1, 1, dir, image_blend, image_alpha);
