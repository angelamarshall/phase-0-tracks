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