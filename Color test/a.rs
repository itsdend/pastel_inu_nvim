// Import necessary libraries
use std::fmt::Debug;

// Define a struct
#[derive(Debug)]
struct Person {
    name: String,
    age: u32,
}

// Define an enum
enum Role {
    Admin,
    User,
}

// Define a trait
trait Describable {
    fn describe(&self) -> String;
}

// Implement the trait for the Person struct
impl Describable for Person {
    fn describe(&self) -> String {
        format!("{} is {} years old", self.name, self.age)
    }
}

// Generic function that works with any type implementing Debug
fn print_debug<T: Debug>(value: T) {
    println!("{:?}", value);
}

// Result type for error handling
fn divide(a: i32, b: i32) -> Result<i32, &'static str> {
    if b == 0 {
        Err("Cannot divide by zero")
    } else {
        Ok(a / b)
    }
}

fn main() {
    // Variables and data types
    let x = 42;
    let y: f64 = 3.14;
    let message: &str = "Hello, Rust!";
    let flag: bool = true;

    // Struct instance
    let person = Person {
        name: String::from("Alice"),
        age: 30,
    };

    // Enum usage
    let role = Role::Admin;

    // Trait implementation
    println!("Person: {}", person.describe());

    // Generic function
    print_debug(x);
    print_debug(y);

    // Error handling with Result
    match divide(10, 2) {
        Ok(result) => println!("Result: {}", result),
        Err(error) => println!("Error: {}", error),
    }
}
