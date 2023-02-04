//@description 


function Timer(_duration, _oneShot = true, _autoStart = true) constructor {
	isRunning = _autoStart;
	
	initialDuration = _duration;
	duration = _duration;
	oneShot = _oneShot;
	
	callback = function() {};
	
	tick = function() {
		if isRunning {
			duration -= global.timing.deltaTempo;
		
			if duration <= 0 {
				callback();
				
				if !oneShot {
					self.restart();	
				} else {
					self.stop();
				}
			}
		}
	}
	
	restart = function() {
		duration = initialDuration;
		self.start();
	}
	
	start = function() {
		isRunning = true;
	}
	
	stop = function() {
		isRunning = false;	
	}
}