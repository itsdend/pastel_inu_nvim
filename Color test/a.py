# Variables and Types
my_var = "Hello, World!"  # String
my_number = 42            # Integer
my_float = 3.14           # Float
my_boolean = True         # Boolean

# Lists and Dictionaries
my_list = [1, 2, 3, 4, 5]
my_dict = {"key1": "value1", "key2": "value2"}

# Functions
def add(a, b):
    return a + b

# Lambda Functions
subtract = lambda a, b: a - b

# String Formatting
name = "John"
greeting = f"Hello, {name}!"

# Classes
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def say_hello(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")

person1 = Person("Alice", 30)
person1.say_hello()

# Decorators
def my_decorator(func):
    def wrapper():
        print("Something is happening before the function is called.")
        func()
        print("Something is happening after the function is called.")
    return wrapper

@my_decorator
def say_hello():
    print("Hello!")

say_hello()

# List Comprehensions
squared_numbers = [x**2 for x in my_list]

# File Handling
with open("example.txt", "w") as file:
    file.write("Hello, file!")

# Exception Handling
try:
    result = 10 / 0
except ZeroDivisionError as e:
    print(f"Error: {e}")
finally:
    print("This will always execute.")

# Modules and Imports
import math
print(math.sqrt(25))

# Virtual Environments
# (Not shown in the code, but a best practice for managing dependencies)

# Generators
def square_numbers(n):
    for i in range(n):
        yield i**2

for num in square_numbers(5):
    print(num)
