import os
from colorama import Fore
import basic

os.system('cls||clear')

while True:
    text = input("Basic>")
    if text == 'exit':
        os.system('cls||clear')
        break
    result, error = basic.run('<stdin>', text)

    if error:
        print(Fore.RED, end="")
        print(error.as_string())
        print(Fore.WHITE)
    else:
        print(result, end='\n\n')