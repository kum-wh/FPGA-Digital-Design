# FPGA Digital Design
All project was done on Vivado and the FPGA used was Basys 3 Development Board.

## Adder
This project was to create a 7-bit adder and subtractor using a 2-bit for the Most Significant Bits and 5-bit for the Least Significan Bits.

## Clock
This project consists of 2 parts where its simulates being a hardware to monitor the water level status in a water reservoir.
A LED 'block' will light up and move left to right at the speed of 3Hz. A new 'block' is light up every 2.67s. When a block reach the end or another lighted up block, it will light up the previous block to simulate rising water level.
When all LED slots are lighted up, the most left LED will blink at a frequency of 0.37Hz. The 7-segment display will also display the characters '.WARNING-LEVEL' character by character, where each character is displayed for 0.67s.
In the second part of the project, specific switches are to be switched on to discharge the full 'reservoir'. The LED will switch off from left to right at a frequency of 1.50Hz.

## Debouncing
Like the clock project, this project likewise consists of 2 parts. The first part simulates a fingerprint entry, where holding down a button represent scanning of the fingerprint. While the center pushbutton is held down, the LEDs will be light up in increasing order, with each LED being turn on at a time interval of 0.336s. If the button is released, the LEDs will reset. After all LEDs are switch on, the word S will appear in the first segment of the 7-segment, follow by A in the second segment, F in the third segment and lastly E in the fourth segment. The 7-segment will then display the word SAFE in whole for 5.37s, before switching to displaying my student number. Turning switches 0 to 3 will switch to the second part of the project.
The second part simulate a crowd control system for 3 rooms, where left, center and right button will be used to indicate a person entering the respective rooms. Each room can hold 3 person and the number of people in the room is displayed on the 7-segment. There are certain rules imposed on how people can enter the rooms to prevent overcrowding.
1. A person can only enter a room if the difference in number of persons inside the room is not be more than 1 after entering the room, when compared to the other rooms 
2. No two persons can enter the same room one after the other 
3. The maximum capacity of a room is 3 persons. If an additional person trys to enter, it is counted as breaching the rule.
4. 9 people must be able to enter the rooms within 3.00 seconds.
Each time a rule is broken, the number of chances given will decreased by 1 and the room where the rule is breach will blink with a frequency of 1.49Hz for 10.74s. During this duration, no one is allow to enter any room. If the number of chances reaches 0, the 7-segment will display the word FAIL. This process can be resetted at any moment with the up button.

## Final Project
The final project is to create a sight and sound entertainment system where additional hardware is given. A MEMs microphone and OLED RGB Display Screen are utilize in additional to the FPGA board. The final project have mutiple functions.

### Soundbar
One function is a soundbar that displayed how loud a sound is detected by the microphone. There are mutiple settings the soundbar where the position of the soundbar can be moved left or right, the colour of the background and soundbar can be changed, and lastly, the size of the frame around the soundbar.

### UI
A loading screen will appear will the system is first started up. There is also a home screen if no functions are selcted.

### Maze
A maze was created to displayed on the screen and the user can move using buttons.

### Game
A game was also created using the screen where there are 3 lanes. Obstacles will appear in lanes and the player has to dodge them by switching lanes. The player can switch lanes using the buttons. If the player crashed onto a obstacle, a game over screen will be displayed. Likewise, if the player successsfully avoided all obstacles, a Success screen will be displayed.

### Fourier Transform
A attempt to create a fourier transform module was attempted unsuccessfully, where the module would sample sound using the microphone and display its calculated fourier value in its predicted frequency bin .