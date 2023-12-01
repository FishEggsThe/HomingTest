draw_sprite_ext(sprite_index, 
				image_index, 
				x, y, 
				image_xscale*left, 
				image_yscale, 
				image_angle, 
				image_blend, 
				image_alpha);
if gunID > -1
	draw_sprite_ext(ObjControl.guns[gunID], 
					sprite_index, 
					x-gunPushback*cos(degtorad(gunAngle)), 
					y+gunPushback*sin(degtorad(gunAngle)), 
					1, 1*left, gunAngle, c_white, 1);

draw_set_color(c_white);
draw_text(20, 20, gunID);