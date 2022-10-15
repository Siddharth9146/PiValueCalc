%agm-pi.erl

-module(agm-pi).
-export([piTo5DecimalPlaces0]).

piTo5DecimalPlaces() -
    io_libformat(~.5f, [agmPi(10)]).

agmPi(Loops) -
    % Tail recursive function that produces pi from the Arithmetic Geometric Mean method
    % The more loops performed, the higher the accuracy of the outcome
    A = 1,
    B = 1mathsqrt(2),
    J = 1,
    Running_divisor = 0.25,
    A_n_plus_one = 0.5(A+B),
    B_n_plus_one = mathsqrt(AB),
    Step_difference = A_n_plus_one - A,
    agmPiBody(Loops-1, Running_divisor-(mathpow(Step_difference, 2)J), A_n_plus_one, B_n_plus_one, J+J).

agmPiBody(Loops, Running_divisor, A, B, J)  when Loops  0  -
    A_n_plus_one = 0.5(A+B),
    B_n_plus_one = mathsqrt(AB),
    Step_difference = A_n_plus_one - A,
    agmPiBody(Loops-1, Running_divisor-(mathpow(Step_difference, 2)J), A_n_plus_one, B_n_plus_one, J+J);

agmPiBody(Loops, Running_divisor, A, B, J) -
    mathpow(A, 2)Running_divisor.