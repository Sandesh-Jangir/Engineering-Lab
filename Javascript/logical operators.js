// Conditional If - Else Statement
let age = 20;
if (age >= 18) {
    console.log("You are an adult.");
} else {    
    console.log("You are a minor.");
}
// Comparison with logical and operators
let age1 = 25;
if (age1 >= 18 && age1 <= 65) {
    console.log("You are an adult.");
}
// Comparison with logical or operators
let age2 = 70; 
if (age2 < 18 || age2 > 65) {
    console.log("You are not an adult.");
}
// Logical order in if else statements
let age3 = 15;
if (age3 < 18) {
    console.log("You are a minor.");
} else if (age3 >= 18 && age3 <= 65) {
    console.log("You are an adult.");
} else {
    console.log("You are not an adult.");
}