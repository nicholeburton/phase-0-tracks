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

  //go through each item in object 1...
  for (i = 0; i < /*length of object 1*/; i++){

  // ...and compare to each item in object 2.
    for (j = 0; j < /*length of object 2*/;, j++){
      if /*match*/{
        has_match = true
        // break
      }
    }

  }

  // return result.
  return has_match;
}

// driver for longest_phrase
console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
console.log(longest_phrase(["Garnet", "Pearl", "Steven"]));
console.log(longest_phrase(["Hello Kitty", "Rilakkuma", "My Melody"]))
