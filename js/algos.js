// FUNCTIONS:
// Release 0
/* Method: find the longest word in an array
Input: an array 
Steps: sort the elements in the array from longest to shortest string length
Output: return the first string in the array since that will be the longest */
function findLongestWord(arr) {
  var longestWord = arr.sort(function(a, b) { return b.length - a.length; });
  return longestWord[0];
}

// Release 1
/* Method: indicate whether or not a value is shared between 2 hashes
Input: 2 hashes
Steps: determine if at least one word matches in each hash
Output: return true if one word matches and false if none do */
function sharedValue(one, two){
   for (var i in one) {
           if (one[i] === two[i] ) {
              return true;
           }       
   }
   return false;
}

// Release 2
/* Method: generate random test data
Input: integer indicating how many variables you would like in your array
Steps: set number of variables to equal the integer inputted, jumble up the possible letters and make sure they cap at 10
Output: an array of stings with jumbled letters */
function makeID(arrLength) {
	var arr = [];
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
   	for (var i = 0; i < arrLength; i++) {
	   	var word = "";
	
		for( var a=1; a <= 10; a++ ) {
        word += possible.charAt((Math.random() * possible.length * 2)); }
		
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
