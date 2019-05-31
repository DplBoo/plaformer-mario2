/// @description Player Movement
/// check for death
if health_ <= 0 {
	instance_destroy();
}

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	speed_[h] += hinput*acceleration_;
	speed_[h] = clamp(speed_[h], -max_speed_, max_speed_ );
	image_speed = flipped*hinput* .6;
} else {
	speed_[h] = lerp(speed_[h], 0, friction_);
	image_speed = 0
	image_index = 0
}

if !place_meeting(x, y+1, o_solid) {
	speed_[v] += gravity_;
	image_speed = 0;
	image_index = 6;
} else {
	if keyboard_check_pressed(vk_up){
		speed_ = jump_height_;
		x_scale_ = image_xscale*.8;
		y_scale_ = image_yscale*1.4;
	}
} 

move(hspeed_, vspeed_);

//Check for Landing
if place_meeting(x, y+1, o_solid) && !place_meeting(x, yprevious+1, o_solid) {
	x_scale_ = image_xscale*1.4;
	y_scale_ = image_yscale*.8;
	vspeed_ = 0;
	y = ceil(y);
}
	
//Move back to normal scale
x_scale_ =lerp(x_scale_, image_xscale, .2);
y_scale_ = lerp(y_scale_, image_yscale, .2);