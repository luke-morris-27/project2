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

follow_moves(_, [], R, C, R, C).

follow_moves(Maze, [A|Rest], R0, C0, RF, CF) :-
    move(Maze, A, R0, C0, R1, C1),
    follow_moves(Maze, Rest, R1, C1, RF, CF).

legal(Maze, R, C) :-
    cell(Maze, R, C, Cell),
    Cell \= w. % cannot go into wall

