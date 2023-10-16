var A >= 0, <= 500;
var B >= 0, <= 500;
var p >= 0, <= 100;
var x >= 0, <= 200;
var y >= 0, <= 200;
var Cx >= 0, <= 500;
var Cy >= 0, <= 500;
var Px >= 0, <= 500;
var Py >= 0, <= 500;

maximize profit: 9 * x + 15 * y - 6 * A - 8 * B - 10 * (Cx + Cy);

subject to in_out_same_pool: Px + Py - A - B = 0;
subject to in_out_same_mixer_x: x - Px - Cx = 0;
subject to in_out_same_mixer_y: y - Py - Cy = 0;
subject to content_x_limit: p * Px + 2 * Cx - 2.5 * x <= 0;
subject to content_y_limit: p * Py + 2 * Cy - 1.5 * y <= 0;
subject to content_same: p * Px + p * Py - 3 * A - B = 0;

solve;

display x, y, p, A, B, Cx, Cy, Px, Py;