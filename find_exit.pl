find_exit(Maze, Actions) :-
    valid_maze(Maze),
    find_start(Maze, StartRow, StartCol)


valid_maze(Maze) :-
    Maze \= [],
    findall((R,C), cell(Maze,R,C,s), Starts),
    length(Starts, 1).

find_start(Maze, Row, Col) :-
    cell(Maze, Row, Col, s), !.

cell(Maze, Row, Col, Cell) :-
    nth0(Row, Maze, RowList),
    nth0(Col, RowList, Cell).
