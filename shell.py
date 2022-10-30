import os
from colorama import Fore
import basic

os.system('cls||clear')

while True:
    text = input("Basic>")
    if text.strip() == "": continue
    if text.strip() == 'exit':
        os.system('cls||clear')
        break
    result, error = basic.run('<stdin>', text)

    if error:
        print(Fore.RED, end="")
        print(error.as_string(), end="")
        print(Fore.WHITE)
    elif result:
        if len(result.elements) == 1:
            print(repr(result.elements[0]))
        else:
            print(repr(result))
