// Variables and Types
let myVar = "Hello, World!";  // String
let myNumber = 42;            // Number
const PI = 3.14159;           // Constant

// Arrays and Objects
let myArray = [1, 2, 3, 4, 5];
let myObject = { key1: "value1", key2: "value2" };

// Functions
function add(a, b) {
    return a + b;
}

// Arrow Function
const subtract = (a, b) => a - b;

// Template Literals
let name = "John";
let greeting = `Hello, ${name}!`;

// Classes
class Person {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }

    sayHello() {
        console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
    }
}

let person1 = new Person("Alice", 30);
person1.sayHello();

// Promises
const fetchData = () => {
    return new Promise((resolve, reject) => {
        // Simulating an asynchronous operation
        setTimeout(() => {
            const data = "Async data loaded!";
            resolve(data);
        }, 2000);
    });
};

fetchData().then(result => {
    console.log(result);
}).catch(error => {
    console.error(error);
});

// Destructuring Assignment
const { key1, key2 } = myObject;

// Spread Operator
const numbers = [1, 2, 3];
const newNumbers = [...numbers, 4, 5];

// Async/Await
const asyncFunction = async () => {
    try {
        const result = await fetchData();
        console.log(result);
    } catch (error) {
        console.error(error);
    }
};

asyncFunction();
