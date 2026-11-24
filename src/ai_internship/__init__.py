
def add(a, b):
    return a + b


def subtract(a, b):
    return a - b


def main():
    print("===== SIMPLE CALCULATOR =====")

    a = float(input("Enter first number: "))
    b = float(input("Enter second number: "))

    print("1. Addition")
    print("2. Subtraction")

    choice = input("Choose operation: ")

    if choice == "1":
        print("Result:", add(a, b))

    elif choice == "2":
        print("Result:", subtract(a, b))

    else:
        print("Invalid choice!")
