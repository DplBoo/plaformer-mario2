if instance_exists(o_player) {
	var dir = point_direction(x, y, o_player.x, o_player.y);
	speed_[h] = lengthdir_x(speed_[h], dir);
	speed_[v] = lengthdir_y(speed_[v], dir);
move(speed_, 1);

	/// Push Force
	move(hspeed_push_, vspeed_push_);
	if !place_meeting(x, y, o_enemy) {
		hspeed_push_ = lerp(hspeed_push_, 0, .1);
		vspeed_push_ = lerp (vspeed_push_, 0, .1);
	}

	///Death
	if health_ <=0 {
		instance_destroy();
	}

	if distance_to_object(o_player) < 48 {
		state_ = ATTACK_;
	}
}