FUN add()
    CLS()
    PRINT("How many numbers fo you want to add:")
    VAR n = INPUT_INT()
    VAR sum=0
    PRINT("Enter the numbers one-by-one:")
    FOR i=0 TO n THEN
        VAR num = INPUT_INT()
        VAR sum = sum+num
    END
    PRINT("RESULT:")
    PRINT(sum)
    PRINT("-----------------")
END
FUN sub()
    CLS()
    PRINT("MINUEND - SUBTRAHEND = RESULT")
    PRINT("ENTER NUMBER 1(Minuend):")
    VAR num1 = INPUT_INT()
    PRINT("ENTER NUMBER 2(Subtrahend):")
    VAR num2 = INPUT_INT()
    VAR result = num1-num2
    PRINT("RESULT:")
    PRINT(result)
    PRINT("-----------------")
END
FUN mul()
    CLS()
    PRINT("How many numbers fo you want to multiply:")
    VAR n = INPUT_INT()
    VAR prod=1
    PRINT("Enter the numbers one-by-one:")
    FOR i=0 TO n THEN
        VAR num = INPUT_INT()
        VAR prod = prod*num
    END
    PRINT("RESULT:")
    PRINT(prod)
    PRINT("-----------------")
END
FUN div()
    CLS()
    PRINT("ENTER DIVIDEND:")
    VAR num1 = INPUT_INT()
    PRINT("ENTER DIVISOR:")
    VAR num2 = INPUT_INT()
    VAR result = num1/num2
    PRINT("RESULT:")
    PRINT(result)
    PRINT("-----------------")
END
FUN square()
    CLS()
    PRINT("Enter the number to get its square:")
    VAR num1 = INPUT_INT()
    VAR result = num1^2
    PRINT("RESULT:")
    PRINT(result)
    PRINT("-----------------")
END
FUN sqroot()
    CLS()
    PRINT("Enter the number to get its Square Root:")
    VAR num1 = INPUT_INT()
    VAR result = num1^0.5
    PRINT("RESULT:")
    PRINT(result)
    PRINT("-----------------")
END
VAR loop = 1
WHILE loop == 1 THEN
    CLS()
    PRINT("Please Select the option")
    PRINT("1. Addition")
    PRINT("2. Subtraction")
    PRINT("3. Multiplication")
    PRINT("4. Division")
    PRINT("5. Square")
    PRINT("6. Square root")
    PRINT("7. EXIT")
    VAR inp = INPUT_INT()
    IF inp >= 8 THEN
        CLS()
        BREAK
    END
    IF inp == 1 THEN
        add()
    END
    IF inp == 2 THEN
        sub()
    END
    IF inp == 3 THEN
        mul()
    END
    IF inp == 4 THEN
        div()
    END
    IF inp == 5 THEN
        square()
    END
    IF inp == 6 THEN
        sqroot()
    END
    PRINT("TRY AGAIN? Press Enter...")
    VAR again = INPUT()
END