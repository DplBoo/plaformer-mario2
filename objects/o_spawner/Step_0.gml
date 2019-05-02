/// @description Spawn enemies

if !instance_exists(o_enemy) {
	repeat (wave_) {
		instance_create_layer(x, y, "instances", o_enemy);
	}
	wave_ += 1;
}