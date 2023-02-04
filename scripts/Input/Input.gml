//@description 

#macro RIGHT	0
#macro DOWN 	1
#macro LEFT		2
#macro UP		3

function Input() constructor {
	RIGHT_INPUTS	= [ord("D"), vk_right	];
	DOWN_INPUTS		= [ord("S"), vk_down	];
	LEFT_INPUTS		= [ord("A"), vk_left	];
	UP_INPUTS		= [ord("W"), vk_up		];

	INPUTS			= [RIGHT_INPUTS, DOWN_INPUTS, LEFT_INPUTS, UP_INPUTS]
	
	inputDirs = [0, 0, 0, 0];
	
	getInput = function () {
		for(i = 0; i < array_length(INPUTS); i++) {
			inputDirs[i] = 0;
			for (j = 0; j < array_length(INPUTS[i]); j++) {
				if keyboard_check(INPUTS[i][j]) {
					inputDirs[i] = 1;
					break;
				}
			}
		}
		
		return inputDirs;
	}
}