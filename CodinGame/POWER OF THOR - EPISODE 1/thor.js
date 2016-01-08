/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 * ---
 * Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
 **/

 var inputs = readline().split(' ');
 var lightX = parseInt(inputs[0]); // the X position of the light of power
 var lightY = parseInt(inputs[1]); // the Y position of the light of power
 var initialTX = parseInt(inputs[2]); // Thor's starting X position
 var initialTY = parseInt(inputs[3]); // Thor's starting Y position
 
 // game loop
 while (true) {
	 var remainingTurns = parseInt(readline()); // The remaining amount of turns Thor can move. Do not remove this line.
 
	 // Write an action using print()
	 var tx = initialTX
	 var ty = initialTY
	 var direction_x = ""
	 var direction_y = ""
	 
	 while (true) {
		 if (tx == lightX) {
			 direction_x = ""
			 }
		 if (ty == lightY) {
			 direction_y = ""
			 }
		 if (tx < lightX) {
			 direction_x = "E"
			 tx = tx + 1
			 } else if (tx > lightX) {
				 direction_x = "W"
				 tx = tx - 1
				 }
		 if (ty < lightY) {
			 direction_y = "S"
			 ty = ty + 1
			 } else if (ty > lightY) {
				 direction_y = "N"
				 ty = ty - 1
				 }
		 print(direction_y+direction_x)
	 }
	 // To debug: printErr('Debug messages...');
 
	 print('SE'); // A single line providing the move to be made: N NE E SE S SW W or NW
 }