/// @description soft collide
var dir = point_direction(other.x, other.y, x, y);
hspeed_push_ += lengthdir_x(1, dir);
vspeed_push_ += lengthdir_y(1, dir);
move_push();

move_push();
if !place_meeting(x, y, o_enemy) {
	hspeed_push_ = lerp(hspeed_push_, 0, .1);
	vspeed_push_ = lerp(vspeed_push_, 0, .1);
}
	