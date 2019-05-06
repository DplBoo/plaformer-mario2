/// @description soft collide
if point_in_rectangle(x, y, 0, 0, room_width, room_height) {
	var dir = point_direction(other.x, other.y, x, y);
	speed_push_[H] += lengthdir_x(.1, dir);
	speed_push_[V] += lengthdir_y(.1, dir);
}

	