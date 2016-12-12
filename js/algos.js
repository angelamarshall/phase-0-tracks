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

// Release 2
/* Method:
Input:
Steps:
Output:     */

function makeID(arrLength) {
	var arr = [];
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
   	for (var i = 0; i < arrLength; i++) {
	   	var word = "";
	
		for( var a=1; a <= 10; a++ ) {
      word += possible.charAt((Math.random() * possible.length * 2)); }
		
			for (var letter = 0; letter < Math.random(10); letter++); {
			word += "";
			}
		arr.push(word);
	}
	return arr;
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

// Release 2
for (var i = 0; i <= 0; i++) {
	var numOfVariables = makeID(10);
	console.log(numOfVariables);
	console.log("Here is the longest word in the array:");
	console.log(findLongestWord(numOfVariables));
}
