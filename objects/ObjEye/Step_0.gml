distToPlayer = clamp(0.5*point_distance(x, y, ObjPlayer.x, ObjPlayer.y), 0, 45);
angToPlayer = point_direction(x, y, ObjPlayer.x, ObjPlayer.y);
lookX = distToPlayer*cos(degtorad(angToPlayer));
lookY = distToPlayer*sin(degtorad(angToPlayer));