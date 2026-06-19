// Access multidimensional arrays with indexes
let myArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [[10, 11, 12], 13, 14], [15, 16, 17]];
let myData = myArray[3][0][1]; // myData is equal to 11

// Manipulate arrays with push()
let arr1 = ["Stimpson", "J", "cat"];
arr1.push(["happy", "joy"]); // arr1 now equals ["Stimpson", "J", "cat", ["happy", "joy"]]

// Manipulate arrays with pop()
let arr2 = [["John", 23], ["cat", 2]];
let removedFromArr2 = arr2.pop(); // removedFromArr2 equals ["cat", 2] and arr2 now equals [["John", 23]]

// Manipulate arrays with shift()
let arr3 = [["John", 23], ["dog", 3]];
let removedFromArr3 = arr3.shift(); // removedFromArr3 equals ["John", 23] and arr3 now equals [["dog", 3]]

// Manipulate arrays with unshift()
let arr4 = [["John", 23], ["dog", 3]];
arr4.shift(); // arr4 now equals [["dog", 3]]
arr4.unshift(["Paul", 35]); // arr4 now equals [["Paul", 35], ["dog", 3]]

// Write reusable JavaScript with functions
function reusableFunction() {
  console.log("Hi World");
}
reusableFunction(); // Outputs "Hi World" to the console
// Passing values to functions with arguments
function functionWithArgs(a, b) {
  console.log(a+b);
}
functionWithArgs(1, 2); // Outputs 3 to the console
functionWithArgs(7, 9); // Outputs 16 to the console

// Return a value from a function with return
function timesFive(num) {
  return num * 5;
}
let answer = timesFive(5); // answer is equal to 25

// Global and Local Scope in Functions

/* What is the difference between global and local scope?
A variable which is defined outside of a function block is called a global variable, because it is available for use in the entire code. A variable which is declared within a function, as well as the function parameters, have local scope. This means they are only accessible within that function.

A variable defined without the let or const keywords is automatically created in the global scope. This can lead to unintended consequences, such as overwriting existing global variables or creating global variables that are not intended to be global. It is generally considered good practice to always declare variables with let or const to avoid accidentally creating global variables.
*/

// Global Scope
let myGlobal = 10;
function fun1() {
  oopsGlobal = 5; // Assigning a value to an undeclared variable automatically makes it global.
}
// Local Scope
function myLocalScope() {
  let myVar = 5; // myVar is only defined within the function myLocalScope
  console.log(myVar); // Outputs 5 to the console
}
myLocalScope(); // Calls the function and outputs 5 to the console
console.log(myVar); // myVar is not defined outside the function, so this will cause an error