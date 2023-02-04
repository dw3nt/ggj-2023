//@description 

global.timing = {
	idealDelta: 1 / room_speed,
	delta: 0,
	tempo: 1,
	deltaTempo: 0,
	
	updateTimes: function() {
		delta = delta_time * 0.000001;
		deltaTempo = delta * tempo;
	}
};