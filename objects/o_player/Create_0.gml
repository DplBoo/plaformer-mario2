/// @description create the variables
hspeed_=0;
max_hspeed_ = 4;
vspeed_=0;
gravity_ = .5;
acceleration_ = 1;
friction_ = .3;
jump_height_ = -8;

//Map the Keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);

// Bullet Cooldown
bullet_cooldown_ = room_speed/6;
alarm[0] = bullet_cooldown_;

//scale Variables
x_scale_ = image_xscale;
y_scale_ = image_yscale;