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

console.log(longest_phrase(["long phrase","longest phrase","longer phrase"]));
