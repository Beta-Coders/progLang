import os
import basic
os.system('cls||clear')

while True:
    text = input("Basic>")
    result, error = basic.run('<stdin>',text)

    if error: print(error.as_string(),end='\n\n')
    else : 
        print(result,end='\n\n')
        