#include <iostream>
using namespace std;

int main(){
    int current = 1;
    int previous = 0;
    int next;
    int n;

    cout << "Enter the number of terms in the Fibonacci series: ";
    cin >> n;
    
    for (int i=0; i<(n-2); i++){
        next = current + previous;
        previous = current;
        current = next;
    }

    cout << "The " << n << "th term in the Fibonacci series is: " << next << endl;
    return 0;
}