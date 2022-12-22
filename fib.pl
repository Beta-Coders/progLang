FUN fib(n)
    VAR a = 0
    VAR b = 1
    VAR c = 0
    VAR i = 0
    IF n==0 THEN RETURN a       # Base Case
    FOR i=2 TO n+1 THEN
        VAR c = a+b
        VAR a = b
        VAR b = c
    END
    RETURN b
END
FOR j=0 TO 10 THEN              # Loop to Print fib Numbers upto 10
    PRINT(fib(j))
END