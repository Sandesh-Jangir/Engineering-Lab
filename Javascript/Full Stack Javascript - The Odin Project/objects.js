// There are multiple ways to define objects in JavaScript, but in many cases object literal syntax is used as follows:

const myObject = {
  property: "Value!",
  otherProperty: 77,
  "obnoxious property": function() {
    // do stuff!
  },
};


// There are also 2 ways to get information out of an object: dot notation and bracket notation

// dot notation
console.log(myObject.property); // "Value!"

// bracket notation
console.log(myObject["obnoxious property"]); // [Function]

// Objects are usually used as a data structure:
const playerOne = {
  name: "tim",
  marker: "X",
};

const playerTwo = {
  name: "jenn",
  marker: "O",
};

// OOPs
const car = {
  make: "Volkswagen",
  model: "Golf",
  year: 2026,
  color: "blue",
  priceUSD: 40000,

  // The above are the properties of an JS Object.

  // The below are the methods to interact with the object in a desired manner.

  // a method is just a function assigned to a property
  applyDiscount: function(discountPercentage) {
    const multiplier = 1 - discountPercentage / 100;
    this.priceUSD *= multiplier;
  },
  // shorthand way to add a method to an object literal
  getSummary() {
    return `${this.year} ${this.make} ${this.model} in ${this.color}, priced at $${this.priceUSD} (USD).`;
  }
};

// Note :
// The this keyword behaves differently inside arrow functions compared to traditional function expressions (which includes the shorthand syntax). We don’t need to dive into how or why it differs yet, just know that if you used arrow functions in the above example, they would not behave as you expect.


// Underscore properties
// Out in the wild, you may see code with object properties that start with _ e.g. _someProperty. This is purely a developer convention that indicates the property is intended to be “private”. A private property is one that’s only meant for internal use and not meant to be read or called outside of the object itself (such as helper methods).