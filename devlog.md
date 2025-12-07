# Luke Morris Devlog for Project 2

# 12-2-2025 10:25 AM
## For this project I am tasked with creating a Prolog program that can solve a maze, which should always succeed if solving the maze is possible and fail otherwise. I plan to do some more practice with Prolog to become comfortable with its format, and I will do some research for constructs that may be useful for this assignment. I may write some pseudocode to determine what will be necessary to achieve this goal.

# 12-3-2025 9:39 PM
## Before anything I will need to write code to determine how to write code to evaluate a maze's validity. From what I understand any maze with only one start point and a consistent row and column count is valid. I am also having difficulty getting the sample code given for this project to work on SWISH, which I am using for testing and writing in prolog. For the basic actions needed to test a movement series, I will need to write code to test the maze's validity, find the start point, follow the movements, and probably one to immediately stop movement if a move tries to move onto a wall.

## End of session update at 11:19 PM: I have constructed a method for determining the validity of a maze, created some framework for the main method find_exit, and created methods for finding the start and other cells. I will have to do some isolated testing on these methods to ensure functionality. Next I will need to implement the bulk of the code for following directions and determining the validity of the next move. This method will certainly be recursive to continue making moves until an end case (reaching an exit).

# 12-5-2025 5:34 PM
## Today I will finish implementing follow_moves, which will be a recursive function to follow a list of movement instructions provided by the user. Recursion is the best way to implement this because it can continously execute the code until it moves into a wall or an exit. I will need to find a way to check for the current space in the maze as well.

## End of session update at 7:25 PM: I finished follow_moves and created a legality predicate which simply ensures the current space is not a wall. I will need to deliberate on the best way to end movement once an exit is reached. I may add an extra checker for e to one of the function or maybe there will be something easier. I will then need to thoroughly test the program by inputting a lot of complex and non-square mazes and also enter invalid mazes to ensure they are rejected.

# 12-7-2025 1:38 AM
## Today I will implement any additional space checking that may be needed for e or other spaces. I looked through the code and the structure of Prolog so I believe I just will add a line for it at the end of find_exit.

## End of session update at 1:58 AM: I have implemented checking for landing on e by inserting a check for it as part of find_exit. I have tested the algorithm with both valid and invalid inputs and with a number of mazes and it seems to work except for one problem: My code for moving into a wall is flawed. I can move into and back out of a wall, make it to the end, and it declares it a valid maze completion. Next time I will have to fix this.
