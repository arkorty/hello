#include <iostream>

class HelloWorld {
  public:
    void print() {
        std::cout << "Hello, world!\n\
By the way, I am actually written in C++." << std::endl;
    }
};

int main() {
    HelloWorld obj;
    obj.print();

    return 0;
}
