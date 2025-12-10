Luke Morris Project 2 Readme

There is one file, find_exit.pl, which determines the validity of steps to solve a maze.

find_exit.pl can be run on SWISH at https://swish.swi-prolog.org by typing in the ?- field.

Input must be of the form find_exit([series of rows, seperated by commas], [series of instructions, either left, right, up, or down, seperated by commas]). An example is
find_exit([
    [w,w,w,w,w],
    [w,s,f,f,w],
    [w,f,w,e,w],
    [w,w,w,w,w]
   ], [right,right,down]).

The program analyzes the maze. Any w is a wall, f is a floor, e is an exit, and s is start. All mazes must have only one start. The program analyzes the series of instructions and determines if it will reach any exit from start.
The program returns true if the movements are valid and result in reaching an exit and false if they do not reach an exit, the movements are invalid (goes into a wall at some point), or the maze is invalid (has multiple starts).
