#include <string>
#include <iostream>
#include <vector>
#define SQUARE(x) ((x) * (x))
// Define a struct
struct Point {
    int x;
    int y;
};

// Define a class with template
template <typename T>
class Container {
private:
    std::vector<T> elements;

public:
	int b = 5;
    // Constructor
    Container() {}

	std::string A = "hehe";

    // Member function to add an element to the container
    void addElement(const T& element) {
        elements.push_back(element);
    }

    // Member function to display all elements in the container
    void displayElements() const {
        std::cout << "Container elements: ";
        for (const auto& element : elements) {
            std::cout << element << " ";
        }
        std::cout << std::endl;
    }
};

// Template function to find the maximum of two values
template <typename T>
T max(T a, T b) {
    return (a > b) ? a : b;
}

int main() {
    // Using structs
    Point p1 = {1, 2};
	bool cd = false;
	p1.x;
    std::cout << "Point: (" << p1.x << ", " << p1.y << ")" << std::endl;
	int result = SQUARE(5);
    // Using classes and templates
    Container<int> intContainer;
	intContainer.b;
    intContainer.addElement(10);
    intContainer.addElement(20);
    intContainer.displayElements();

    Container<double> doubleContainer;
    doubleContainer.addElement(3.14);
    doubleContainer.addElement(2.718);
    doubleContainer.displayElements();

    // Using template function
    int maxInt = max(5, 8);
    double maxDouble = max(3.14, 2.718);

    std::cout << "Max int: " << maxInt << std::endl;
    std::cout << "Max double: " << maxDouble << std::endl;

    // Using pointers
    int* intPtr = new int(42);
    std::cout << "Value pointed by intPtr: " << *intPtr << std::endl;
    delete intPtr; // Remember to free the allocated memory

    return 0;
}
