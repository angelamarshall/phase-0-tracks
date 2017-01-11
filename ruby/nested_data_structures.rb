highway = {
	sedan: [
		'Lisa', 
		'Dan', 
		'Jack'
		],
	truck: [
		'Steve', 
		'Sally'
		],
	van: [
		'Margaret', 
		'David', 
		'Eva', 
		'Theo'
		],
	hybrid: [
		'Chris', '
		Carmen'
		],
	coupe: [
		'Jordan', 
		'Angela'
	]
}

p highway

puts "There are two families passing one another on the highway. 
Each family is taking their child to soccer practice. One family is in a 
sedan and the other is in a van. Both of them drop off their little boys and 
now no longer have them in the car."

highway[sedan][2].delete
highway[van][3].delete

p highway





















=begin

This is my old code before the repeat:

classroom = {
	teacher_desk: [
		'stapler',
		'black pin',
		'glasses'
	],
	bad_student_desk: [],
	good_student_desk: [
		'book',
		'binder',
		'pencil sharpener',
		'notepad',
		'pencil case'
	]
}

puts "What is the 2nd item on the good student's desk?"
p classroom[:good_student_desk][1]

puts "I think I saw a planner on the good student's desk..."
classroom[:good_student_desk].push('planner')
p classroom

puts "The teacher's desk actually had a red pin on it, not a black one."
classroom[:teacher_desk][1] = 'red pin'
p classroom

puts "I am pretty sure the bad student had their phone on their desk."
classroom[:bad_student_desk].push('phone')
p classroom

puts "That looks about right."

=end