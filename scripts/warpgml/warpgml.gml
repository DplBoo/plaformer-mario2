var half_width = sprite_with/2
if x > room_width + half_width {
	x = -half_width ;
}

if x < -half_width {
	x = room_height+-half_width;
}