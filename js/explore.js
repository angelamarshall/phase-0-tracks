//Create a function to reverse a string
//Need an empty string that will hold the newly created string
//use a loop to grab on to the last letter in the string and loop through the other letters till the given word is spelt backwords
//return the reversed word 

function reverse(str) {
    var new_string = "";
    for (var i = str.length - 1; i >= 0; i--) { 
        new_string += str[i]; 
    }
    return new_string;
}
 
reverse('hello');

if (1 == 1) {
	console.log(reverse('hello'));
} else {
	console.log('hello');
}