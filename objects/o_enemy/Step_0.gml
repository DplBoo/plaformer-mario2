/// @description Move Towards The Player
var dir = point_direction(x, y, o_player.x, o_player.y);
hspeed_ = lengthdir_x(speed_, dir);
vspeed_ = lengthdir_y(speed_, dir);
move();

move_push();
if !place_meeting(x, y, o_enemy) {
	hspeed_push_ = lerp(hspeed_push_, 0, .1);
	vspeed_push_ = lerp (vspeed_push_, 0, .1);
}