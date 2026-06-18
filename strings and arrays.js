// New insight : Strings are immutable in JavaScript, meaning that once a string is created, it cannot be changed. Any operation that seems to modify a string actually creates a new string.

// Finding length of a string
let str = "Hello, World!";
console.log(str.length); // Output: 13

// Using bracket notation to access characters in a string
console.log(str[0]); // Output: H
console.log(str[7]); // Output: W  

/* Arrays 
Can be used to store multiple values in a single variable. Arrays are mutable, meaning that their elements can be changed after the array is created.

- The cool thing about arrays is that they can hold values of different data types, including numbers, strings, objects, and even other arrays.
*/

// A one dimensional array
let myArray = ["Apple", 2, 7.8];
console.log(myArray[1]); // Output: 2
console.log(myArray[2]); // Output: 7.8

// Nested arrays (arrays within arrays)
let nestedArray = [1, "Hello", [2, 3], { name: "Alice" }];
console.log(nestedArray[2]); // Output: [2, 3]
console.log(nestedArray[3].name); // Output: Alice  

// Access and Modify array elements with bracket notation
let fruits = ["Apple", "Banana", "Cherry"];
console.log(fruits[1]); // Output: Banana
fruits[1] = "Blueberry"; // Modifying the second element
console.log(fruits); // Output: ["Apple", "Blueberry", "Cherry"]