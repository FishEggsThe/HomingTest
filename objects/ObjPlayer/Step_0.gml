// Walk
vspeed = 0;
hspeed = 0;
if keyboard_check(ord("W"))
	vspeed = -moveSpeed;
if keyboard_check(ord("S"))
	vspeed = moveSpeed;
if (keyboard_check(ord("W")) && keyboard_check(ord("S")))
	vspeed = 0;
if keyboard_check(ord("A"))
	hspeed = -moveSpeed;
if keyboard_check(ord("D"))
	hspeed = moveSpeed;
if (keyboard_check(ord("A")) && keyboard_check(ord("D")))
	hspeed = 0;

// GUN
if reload > 0
	reload--;
//debug stuffs
if (keyboard_key == 49 || keyboard_key == 50 || keyboard_key == 51)
	gunID = chr(keyboard_key-1);
if (mouse_check_button_pressed(mb_left) && reload <= 0){
	if gunID == 0{ // shotgun
		reload = room_speed*0.5;
		ObjShake.shake = 4;
		gunPushback = 10;
		repeat(6)
			with(instance_create_layer(x, y, "Instances", ObjProjectile)){
				direction = other.gunAngle + random_range(-15, 15);
				speed = 10 + random_range(-2, 2);
			}
	}
	if gunID == 1{ // Revolver
	reload = room_speed*0.1;
		ObjShake.shake = 2;
		gunPushback = 5;
		with(instance_create_layer(x, y, "Instances", ObjProjectile)){
			direction = other.gunAngle + random_range(-2.5, 2.5);
			speed = 10;
		}
	}
	if gunID == 2{ // Special Revolver
	reload = room_speed*0.1;
		ObjShake.shake = 2;
		gunPushback = 5;
		with(instance_create_layer(x, y, "Instances", ObjProjectile)){
			direction = other.gunAngle + random_range(-2.5, 2.5);
			speed = 10;
			orbit = true;
			orbitTime = 0.075;
		}
	}
}

// Looking stuff
gunAngle = point_direction(x, y, mouse_x, mouse_y);
if (gunAngle > 90 && gunAngle < 270)
	left = -1;
else
	left = 1;
if gunPushback > 0
	gunPushback--;
else
	gunPushback = 0;