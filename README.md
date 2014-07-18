My comments on the project:

The program has three classes, the Rover, the Plateau and the Satellite. The Plateau is a basic grid size as i have dicated and serves the purpose of providing a surface for which the Rovers can move around on. The Rover class is so the Rovers are able to move and take directions both as compass points and also coordinates. Finally the Satellite is used as a basis for the input instructions to be read and also interpreted. 

When approaching this problem i have tried to break it down as far as possible. My first point was to condsider the nouns within the problem and focus on these. I then drew out the grid so i could see what i was trying to acheive. I wanted to visualise each aspect and class in as strong a context as possible and therefore consider the issues which may arise for each. A good example of this is the boundaries which the Plateau has and trying to stop the Rovers from crossing these. Another part of this process was breaking down the input in to arrays and treating these with various methods so i could give consideration to how the satellite may interpret these. 

I have made some assumtions such as that the rovers are aleady initialized by the Satellite and that the rovers are not able to collide with one another if they are beging released sequentially. 

In the future i would like to work on breaking down classes further for clarity purposes and maybe think about introducing a class for the compass which was an idea i had when i approached the problem at the beginning. I would also like to work on the Satellite and the Rovers being able to communicate in a more developed manner. Finally it would be nice to implement some front end aspects to the project.








A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover’s position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin 90 degrees left or right respectively, without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

Input: The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.

The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover’s position, and the second line is a series of instructions telling the rover how to explore the plateau.

The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover’s orientation.

Each rover will be finished sequentially, which means that the second rover won’t start to move until the first one has finished moving.

Output: The output for each rover should be its final co-ordinates and heading.

Input and Output
 
Test Input:
5 5
1 2 N
LMLMLMLMM
3 3 E
MMRMMRMRRM

Expected Output:
1 3 N
5 1 E


