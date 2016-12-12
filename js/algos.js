// Sort the elements in the array from longest to shortest string length
// Return the length of the first element in the array since that should be the longest

// FUNCTIONS:
// Release 0
function findLongestWord(arr) {
  var longestWord = arr.sort(function(a, b) { return b.length - a.length; });
  return longestWord[0];
}

// Release 1
function sharedValue(one, two){
   for (var i in one) {
           if (one[i] === two[i] ) {
              return true;
           }       
   }
   return false;
}

// TESTING:
// Release 0
phrase_length = ["long phrase","longest phrase","longer phrase"]
colors = ["red", "blue", "orange", "yellow", "purple", "pink", "green"]
fruit = ["orange", "peach", "strawberry", "grape", "raspberry"]

findLongestWord(phrase_length);
findLongestWord(colors);
findLongestWord(fruit);

// Release 1
var first = {name: "Angela", age: 22, height: "5ft 2inches"};
var second = {name: "Jordan", age: 22, height: "5ft 9inches"};

sharedValue(first, second)