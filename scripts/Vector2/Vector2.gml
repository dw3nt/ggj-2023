//@description 

#macro Vector2_ZERO		new Vector2(0, 0)
#macro Vector2_LEFT		new Vector2(-1, 0)
#macro Vector2_RIGHT	new Vector2(1, 0)
#macro Vector2_UP		new Vector2(0, -1)
#macro Vector2_DOWN		new Vector2(0, 1)

function Vector2(_x = 0, _y = 0) constructor {
	x = _x;
	y = _y;
	
	normalize = function() {
		self.scale();
	}
	
	scale = function(magnitude = 1) {
		if !self.isEqual(Vector2_ZERO) {
			var _dir = point_direction(0, 0, x, y);
			x = lengthdir_x(magnitude, _dir);
			y = lengthdir_y(magnitude, _dir);
		}
	}
	
	add = function(v2) {
		x += v2.x;
		y += v2.y;
	}
	
	isEqual = function(v2) {
		return self.x == v2.x && self.y == v2.y;
	}
	
	toString = function() {
		return "{ x: " + string(x) + ", y: " + string(y) + " }";	
	}
}