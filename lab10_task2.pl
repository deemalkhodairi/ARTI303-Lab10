% Lab 10 - Task 2

% Sample users
valid_user(ali, 1234).
valid_user(sara, 5678).

login :- try_login(3).

try_login(Attempts) :-
    write('Enter username: '), read(Username),
    write('Enter password: '), read(Password),
    (   valid_user(Username, Password)
    ->  writeln('Login Successful')
    ;   writeln('Login Unsuccessful'),
        Left is Attempts - 1,
        (   Left > 0
        ->  try_login(Left)
        ;   writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).
