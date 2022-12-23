FUN add()
    CLS()
    PRINT("How many numbers fo you want to add:")
    VAR n = INPUT_INT()
    VAR sum=0
    PRINT("Enter the numbers one-by-one:")
    # For-loop is used to get the inputs from the user and do the required sum
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
    # num2 will be subtracted from num1
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
    # To check divisor is not zero
    WHILE num2==0 THEN
        PRINT("Divisor cannot be 0!!!!")
        PRINT("ENTER DIVISOR:")
        VAR num2 = INPUT_INT()
    END
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
    # we have to check whether the entered number is positive or not
    # If a negative argument is passed to sqrt(), domain error occurs.
    # if the number is negative, we ask the user to enter the number again
    WHILE num1<0 THEN
        CLS()
        PRINT("The number cannot be negative!!!!!")
        PRINT("Enter the number again to get its Square Root:")
        VAR num1 = INPUT_INT()
    END
    # sqrt function will return the square root of the required number
    VAR result = num1^0.5
    PRINT("RESULT:")
    PRINT(result)
    PRINT("-----------------")
END
# Driver Function
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
    # To exit the loop
    IF inp >= 7 THEN
        CLS()
        BREAK
    END
    # call add() function to find the Addition
    IF inp == 1 THEN
        add()
    END
    # call sub() function to find the subtraction
    IF inp == 2 THEN
        sub()
    END
    # call multi() function to find the multiplication
    IF inp == 3 THEN
        mul()
    END
    # call division() function to find the division
    IF inp == 4 THEN
        div()
    END
    # call sqr() function to find the square of a number
    IF inp == 5 THEN
        square()
    END
    # call srt() function to find the Square Root of the given number
    IF inp == 6 THEN
        sqroot()
    END
    PRINT("TRY AGAIN? Press Enter...")
    VAR again = INPUT()
END