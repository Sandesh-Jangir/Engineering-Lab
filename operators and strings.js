// Increment and Decrement Operators
let a = 5;
console.log(a++); // Logs 5, then increments a to 6
console.log(a);   // Logs 6

let b = 5;
console.log(++b); // Increments b to 6, then logs 6 

// Compound assignment with augmented operators
let c = 10;
c += 5; // Equivalent to c = c + 5
console.log(c); // Logs 15

// Escaping literal quotes in strings
let singleQuoteString = 'It\'s a beautiful day!';
console.log(singleQuoteString); // Logs: It's a beautiful day!

// Escape sequences in strings
let newLineString = "Hello,\nWorld!";
console.log(newLineString); // Logs: Hello, (new line) World!

/* Similar to \n :

\' - Escapes a single quote
\" - Escapes a double quote
\\ - backslash 
\t - tab
\r - carriage return
\b - backspace
\f - form feed

*/

// Concatinating strings with the + operator
let greeting = "Hello, " + "world!";
console.log(greeting); // Logs: Hello, world!