function longest_phrase(phrase) {

  // define variables to keep track of...
  // ...the phrase that is currently longest.
  var longest_phrase = phrase[0];
  // assigning from the first entry in the array.

  // for each item in the array
  for (i = 0; i < phrase.length; i++) {
  // if the length of the compared phrase is greater than the length of the longest phrase
    if (phrase[i].length > longest_phrase.length){
  // we assign the new phrase as the longest one
    longest_phrase = phrase[i];
    }
  // otherwise we do nothing.
  }
  // return the longest phrase.
  return longest_phrase;
}

function compare_objects(object1, object2){

  // assume no match until proven otherwise.
  has_match = false;
  // console.log(object1);
  // console.log(object2);
  //go through each item in object 1...
  for (i = 0; i < (Object.keys(object2).length); i++){

  // ...and compare to each item in object 2.
    for (j = 0; j < (Object.keys(object2).length); j++){
      object1_key = Object.keys(object1)[i];
      object2_key = Object.keys(object2)[j];
      object1_value = object1[object1_key];
      object2_value = object2[object2_key];
      // if the key of obj1 matches the key of obj2, or the value of obj1 matchs the value of obj2
      if ((object1_key == object2_key) && (object1_value == object2_value)){
        // console.log("Object 1 key: " + object1_key);
        // console.log("Object 1 value: " + object1_value);
        // console.log("Object 2 key: " + object2_key);
        // console.log("Object 2 value: " + object2_value);
        has_match = true;
        return has_match;
      }
    }
  }

  // return result.
  return has_match;
}

function generate_random_array(length){
  string_array = [];

  // create alphabet to choose from

  var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  for (i = 0; i < length; i++){
    var string = "";
    //determine string length by choosing a random number, rounded down, and multiplied to create a non-negative, non-decimal number.
    string_length = Math.floor((Math.random() * 10) + 1);
    // generate string and assign to var
    for (var j = 0; j < string_length; j ++){
      //find the character at (the whole number chosen randomly from 0 to the total length of the alphabet.)
      string += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    }
    string_array.push(string);
  }
  return string_array;
}

// // driver for longest_phrase
// console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
// console.log(longest_phrase(["Garnet", "Pearl", "Steven"]));
// console.log(longest_phrase(["Hello Kitty", "Rilakkuma", "My Melody"]));


// //driver code for compare_objects
// var object1 = {name: "Steven", bage: 44};
// var object2 = {name: "Tamir", bage: 44};
// console.log(compare_objects(object1, object2));

// driver code for generate_random_array

for (k = 0; k < 10; k++){
  console.log("Longest word in this array: " + longest_phrase(generate_random_array(5)));
}
