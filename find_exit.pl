find_exit(Maze, Actions) :-
    valid_maze(Maze),
    find_start(Maze, StartRow, StartCol),
    follow_moves(Maze, Actions, StartRow, StartCol, EndRow, EndCol),
    cell(Maze, EndRow, EndCol, e).

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

move(Maze, left,  R, C0, R, C1) :-
    C1 is C0 - 1,
    legal(Maze, R, C1).
move(Maze, right, R, C0, R, C1) :-
    C1 is C0 + 1,
    legal(Maze, R, C1).
move(Maze, up,    R0, C, R1, C) :-
    R1 is R0 - 1,
    legal(Maze, R1, C).
move(Maze, down,  R0, C, R1, C) :-
    R1 is R0 + 1,
    legal(Maze, R1, C).

legal(Maze, R, C) :-
    cell(Maze, R, C, Cell),
    Cell \= w. % cannot go into wall

