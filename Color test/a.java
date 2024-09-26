import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

// Define an interface
interface MyInterface {
    void display();
}

// Define a base class
class MyBaseClass {
    void baseMethod() {
        System.out.println("Base class method");
    }
}

// Define a class that extends a base class and implements an interface
class MyClass extends MyBaseClass implements MyInterface {
    private String name;

    // Constructor
    public MyClass(String name) {
        this.name = name;
    }

    // Method overriding
    @Override
    public void display() {
        System.out.println("Hello, " + name);
    }

    // Exception handling
    void divide(int a, int b) {
        try {
            int result = a / b;
            System.out.println("Result: " + result);
        } catch (ArithmeticException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}

public class Main {
    // Entry point of the program
    public static void main(String[] args) throws IOException {
        // Input from the user
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
        System.out.print("Enter your name: ");
        String userName = reader.readLine();

        // Create an object of MyClass
        MyClass myObject = new MyClass(userName);

        // Call methods
        myObject.display();
        myObject.baseMethod();
        myObject.divide(10, 2);
    }
}
