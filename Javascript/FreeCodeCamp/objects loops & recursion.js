// Objects in javascript
let person = {
    name: "John",
    age: 30,
    city: "New York"
};

// Accessing object properties
console.log(person.name);   // Output: John
console.log(person["age"]); // Output: 30

// Iterate with while loop
let keys = Object.keys(person);
let i = 0;  
while (i < keys.length) {
    let key = keys[i];
    console.log(key + ": " + person[key]);
    i++;
}
// iterate with for loop
for (let key in person) {
    console.log(key + ": " + person[key]);
}
// do while loop
let j = 0;
do {
    let key = keys[j];
    console.log(key + ": " + person[key]);
    j++;
}while (j < keys.length);

// Recursion example
function factorial(n) {
    if (n === 0) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}
console.log(factorial(5)); // Output: 120

// Generating Random Numbers
function generateRandomNumbers(count, min, max) {
    let randomNumbers = [];
    for (let i = 0; i < count; i++) {
        let randomNum = Math.floor(Math.random() * (max - min + 1)) + min;
        randomNumbers.push(randomNum);
    }
    return randomNumbers;
}       

// Using ternary operator
let age = 20;
let canVote = (age >= 18) ? "Yes" : "No";
console.log(canVote); // Output: Yes  


/* With this we've completed Free Code Camp's Basic Javascript course. */