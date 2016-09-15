function reverse(string) {
  var reverse_string = "";
//  console.log(string_count)
  for(i = string.length; i > -1; i--) {
    // console.log ("i: " + i);
    // console.log ("reverse_string: " + reverse_string);
    // console.log ("character: " + (string.charAt(i)));
    reverse_string += string.charAt(i);
  }
  return reverse_string;
}

console.log(reverse("Hello"));

var my_string = reverse("Hi There");

if (1 == 1) {
  console.log(my_string);
}
