key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

hspeed = (key_right - key_left) * 5;
vspeed = (key_down - key_up) * 5;

if (key_right || key_left || key_down || key_up){
	image_angle = direction;
}