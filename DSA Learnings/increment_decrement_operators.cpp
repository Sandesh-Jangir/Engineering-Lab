#include <iostream>
using namespace std;

int main(){
    int a = 5; // Binary: 0101

    cout << "Initial value of a: " << a << endl;

    // Increment operators
    cout << "Post-increment (a++): " << a++ << endl; // Output: 5, a becomes 6
    cout << "Value of a after post-increment: " << a << endl; // Output: 6

    cout << "Pre-increment (++a): " << ++a << endl; // Output: 7, a becomes 7
    cout << "Value of a after pre-increment: " << a << endl; // Output: 7

    // Decrement operators - Works likewise

    return 0;
}