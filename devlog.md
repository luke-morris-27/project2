# Luke Morris Devlog for Project 2

# 12-2-2025 10:25 AM
## For this project I am tasked with creating a Prolog program that can solve a maze, which should always succeed if solving the maze is possible and fail otherwise. I plan to do some more practice with Prolog to become comfortable with its format, and I will do some research for constructs that may be useful for this assignment. I may write some pseudocode to determine what will be necessary to achieve this goal.

# 12-3-2025 9:39 PM
## Before anything I will need to write code to determine how to write code to evaluate a maze's validity. From what I understand any maze with only one start point and a consistent row and column count is valid. I am also having difficulty getting the sample code given for this project to work on SWISH, which I am using for testing and writing in prolog. For the basic actions needed to test a movement series, I will need to write code to test the maze's validity, find the start point, follow the movements, and probably one to immediately stop movement if a move tries to move onto a wall.

## End of session update at 11:19 PM: I have constructed a method for determining the validity of a maze, created some framework for the main method find_exit, and created methods for finding the start and other cells. I will have to do some isolated testing on these methods to ensure functionality. Next I will need to implement the bulk of the code for following directions and determining the validity of the next move. This method will certainly be recursive to continue making moves until an end case (reaching an exit).
