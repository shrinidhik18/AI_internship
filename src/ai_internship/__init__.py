
def add(a, b):
    return a + b


def subtract(a, b):
    return a - b


def multiply(a, b):
    return a * b


def main():
   print("===== SIMPLE CALCULATOR v2 =====")

    a = float(input("Enter first number: "))
    b = float(input("Enter second number: "))

    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")

    choice = input("Choose operation: ")

    if choice == "1":
        print("Result:", add(a, b))

    elif choice == "2":
        print("Result:", subtract(a, b))

    elif choice == "3":
        print("Result:", multiply(a, b))

    else:
        print("Invalid choice!")
