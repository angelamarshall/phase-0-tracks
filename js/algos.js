// Sort the elements in the array from longest to shortest string length
// Return the length of the first element in the array since that should be the longest

phrase_length = ["long phrase","longest phrase","longer phrase"]
colors = ["red", "blue", "orange", "yellow", "purple", "pink", "green"]
fruit = ["orange", "peach", "strawberry", "grape", "raspberry"]

function findLongestWord(arr) {
  var longestWord = arr.sort(function(a, b) { return b.length - a.length; });
  return longestWord[0];
}
findLongestWord(phrase_length);
findLongestWord(colors);
findLongestWord(fruit);