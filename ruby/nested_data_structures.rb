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
		'Chris',
		'Carmen'
		],
	coupe: [
		'Jordan', 
		'Angela'
	]
}

p highway

puts "There are two families passing one another on the highway. 
Each family is taking their child to soccer practice. One family is in a 
sedan and the other is in a van. Both of them drop off their little boys (Jack and Theo) and 
now no longer have them in the car."

highway[:sedan].delete_at(2)
highway[:van].delete_at(3)

p highway

puts "After soccer practice the family in the van said they would pick up the other family's 
little boy Theo. They now have Jack and Theo in their car."

highway[:van].push('Jack', 'Theo')

p highway 

puts "In another scenerio on the highway, Jordan gets tired of driving so Angela switches with him."

highway[:coupe].reverse

p highway

puts "Carmen and Chris got in a huge fight while driving. Carmen wanted to get out of the
car and Chris went ahead and picked up his side chick instead."

highway[:hybrid][1] = 'Candice'

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