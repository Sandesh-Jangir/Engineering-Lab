#include <iostream>
#include <unordered_map>
using namespace std;

int romanToInt(string s) {

        // Creating a mapping
        std::unordered_map<char, int> romanToInteger;

        romanToInteger['I'] = 1;
        romanToInteger['V'] = 5;
        romanToInteger['X'] = 10;
        romanToInteger['L'] = 50;
        romanToInteger['C'] = 100;
        romanToInteger['D'] = 500;
        romanToInteger['M'] = 1000;

        int sum = 0;
        for(int i = 0; i<s.length(); i++){
            if (s[i] == 'I' && (s[i+1] == 'V' || s[i+1] == 'X')) sum--;
            else if (s[i] == 'X' && (s[i+1] == 'L' || s[i+1] == 'C')) sum -= 10;
            else if (s[i] == 'C' && (s[i+1] == 'D' || s[i+1] == 'M')) sum -= 100;
            else sum += romanToInteger[s[i]];
        }

        return sum;
    }

int main() {
    string romanNumeral = "IX";
    cout << romanToInt(romanNumeral) << endl;
    return 0;
}