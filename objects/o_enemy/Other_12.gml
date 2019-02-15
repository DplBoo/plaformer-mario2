/// @description Insert Hit state


/// Push Force
move_push();
hspeed_push_ = lerp(hspeed_push_, 0, .1);
vspeed_push_ = lerp (vspeed_push_, 0, .1);

if point_direction(0, 0, hspeed_push_, vspeed_push_) < 1 {
	state_ = MOVEMENT_;	
}