# Quiz Project
# After quiz is completed, display total quantity of correct answers. (percentage is also fine)

# Welcome Screen
print "\n\rAre you ready to test your knowledge of useless crap?\n
( y for yes, n for no )   "

play = gets.chomp

puts "\n\rYou have 15 questions."

# Variable to store answer count
correct_answers = 0
wrong_answers = 0

quiz = [
	{
		question: "\n\r1) How many counties are in South Carolina",
		answer: "D",
		answer_choices: [
			"\tA) 43",
			"\tB) 44",
			"\tC) 45",
			"\tD) 46\n\r"
		]
	},
	{
		question: "\n\r2) What is the largest county (by land size) in South Carolina",
		answer: "A",
		answer_choices: [
			"\tA) Horry",
			"\tB) Aiken",
			"\tC) Greenville",
			"\tD) York\n\r"
		]
	},
	{
		question: "\n\r3) How many states are in the contiguous United States?",
		answer: "B",
		answer_choices: [
			"\tA) 45",
			"\tB) 48",
			"\tC) 50",
			"\tD) 52\n\r"
		]
	},
	{
		question: "\n\r4) What is the capital of Kansas",
		answer: "C",
		answer_choices: [
			"\tA) Great Bend",
			"\tB) Kansas City",
			"\tC) Topeka",
			"\tD) Dodge City\n\r"
		]
	},
	{
		question: "\n\r5) Where did Michael Jordan play college basketball",
		answer: "A",
		answer_choices: [
			"\tA) UNC",
			"\tB) Duke",
			"\tC) Wake Forest",
			"\tD) Harvard\n\r"
		]
	},
	{
		question: "\n\r6) What sport is John McEnroe famous for?",
		answer: "C",
		answer_choices: [
			"\tA) Bowling",
			"\tB) Golf",
			"\tC) Tennis",
			"\tD) Baseball\n\r"
		]
	},
	{
		question: "\n\r7) Track and field star Carl Lewis won how many gold medals at the 1984 Olympic games?",
		answer: "C",
		answer_choices: [
			"\tA) 2",
			"\tB) 3",
			"\tC) 4",
			"\tD) 8\n\r"
		]
	},
	{
		question: "\n\r8) In which city were the 2000 Summer Olympic Games held?",
		answer: "A",
		answer_choices: [
			"\tA) Sydney",
			"\tB) London",
			"\tC) Mexico City",
			"\tD) Berlin\n\r"
		]
	},
	{
		question: "\n\r9) In which sport was Muhammad Ali the world champion?",
		answer: "D",
		answer_choices: [
			"\tA) Football",
			"\tB) Beer Pong",
			"\tC) Wrestling",
			"\tD) Boxing\n\r"
		]
	},
	{
		question: "\n\r10) How many bases are there on a baseball field?",
		answer: "D",
		answer_choices: [
			"\tA) 1",
			"\tB) 2",
			"\tC) 3",
			"\tD) 4\n\r"
		]
	},
	{
		question: "\n\r11) The French Tennis Open is played on what kind of surface?",
		answer: "D",
		answer_choices: [
			"\tA) Gravel",
			"\tB) Asphalt",
			"\tC) Grass",
			"\tD) Clay\n\r"
		]
	},
	{
		question: "\n\r12) What sport do the Los Angeles Lakers play?",
		answer: "C",
		answer_choices: [
			"\tA) Baseball",
			"\tB) Football",
			"\tC) Basketball",
			"\tD) Badmitten\n\r"
		]
	},
	{
		question: "\n\r13) What is the maximum weight of a golf ball?",
		answer: "A",
		answer_choices: [
			"\tA) 1.6oz",
			"\tB) 1.8oz",
			"\tC) 2.5oz",
			"\tD) 4.3oz\n\r"
		]
	},
	{
		question: "\n\r14) How many stitches there, in baseball?",
		answer: "B",
		answer_choices: [
			"\tA) 78",
			"\tB) 108",
			"\tC) 120",
			"\tD) 122\n\r"
		]
	},
	{
		question: "\n\r15) Who owns the record for most stolen bases in baseball one season?",
		answer: "B",
		answer_choices: [
			"\tA) Stan Musuel",
			"\tB) Ricky Henderson",
			"\tC) Roadrunner",
			"\tD) Mark McQuire\n\r"
		]
	}
]

quiz.each do |value|
	system("clear")
	puts value[:question]
	puts value[:answer_choices]
	puts "NOTE: valid answers are A, B, C, or D"
	print "What is your answer? " 
	answer = gets.chomp
	if answer.upcase == value[:answer]
		correct_answers += 1
	else
		wrong_answers += 1
	end
end

if wrong_answers == 0
	puts "\n\rYou must be a genious as you answered all the questions correctly!\n\r"
else
	puts "\n\rYou answered #{correct_answers} questions correctly.\n\r"
end
