if orbit {
	orbitRad += orbitTime;
	orbitX = orbitRadius*cos(orbitRad);
	orbitY = orbitRadius*sin(orbitRad);
	//direction = point_direction(x, y, ObjPlayer.x+orbitX, ObjPlayer.y+orbitY);
	goto = point_direction(x, y, ObjPlayer.x+orbitX, ObjPlayer.y+orbitY);
	direction += 2*speed*sin(degtorad(goto - direction));
	
}

if (homing && instance_exists(ObjEnemy)) {
	nearest = instance_nearest(x, y, ObjEnemy);
	goto = point_direction(x, y, nearest.x, nearest.y);
	direction += speed*sin(degtorad(goto - direction));
}