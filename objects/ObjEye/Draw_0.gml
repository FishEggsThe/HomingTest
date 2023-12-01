draw_set_colour(c_white);
draw_circle(x, y, 50, false);
draw_set_colour(c_black);
draw_circle(x+lookX, y-lookY, 20, false);

draw_text(30, 10, string(x+lookX,) + ", " + string(y+lookY));