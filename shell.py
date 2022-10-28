import os
from colorama import Fore
import basic

os.system('cls||clear')

while True:
    text = input("Basic>")
    if text.strip() == 'exit':
        os.system('cls||clear')
        break
    result, error = basic.run('<stdin>', text)

    if error:
        print(Fore.RED, end="")
        print(error.as_string(), end="")
        print(Fore.WHITE)
    elif result:
        print(repr(result), end='\n\n')
