
% Task 1: Area and Perimeter

% Square
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% Triangle
triangle(Base, Height, Side1, Side2, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is Base + Side1 + Side2.

% Task 2: Login System

% Dataset
user(lulu, pass123).
user(ahmed, abc456).
user(sara, sara789).

% Start login
login :-
    login_attempts(3).

% Maximum attempts exceeded
login_attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.'),
    nl.

% Check username and password
login_attempts(Attempts) :-
    Attempts > 0,
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    (
        user(Username, Password)
        ->
        write('Login Successful'),
        nl
        ;
        write('Login Unsuccessful'),
        nl,
        Remaining is Attempts - 1,
        login_attempts(Remaining)
    ).
