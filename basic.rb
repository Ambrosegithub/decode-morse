=begin
states = {
    "Benin City" => "BC",
    "Rivers" => "PH",
    "Delta" => " AS",
    :Kaduna => "KND"
}

puts states["Delta"]
puts states[:Kaduna]

def sayhi(name, age)
    puts ("Hello" + " " + name + " " + "you are" + " " + age.to_s)
    
end
puts sayhi("AMBROSE", 37)

def cube(num)
    return num * num * num, 70
    4
end
puts cube(5)[1]

ismale = false
istall = false

if ismale and istall
   puts "You are a tall male" 
elsif ismale  and !istall
    puts "You are a short male"
elsif !ismale and istall
    puts "You are not a male but you are tall"
else 
    puts "You are  not a male and not tall"
end

def max(num1, num2, num3)
   if num1 >= num2 and num1 >= num3
    return num1
    
   elsif num2 >= num1 and num2 >= num3 
    return num2
    
   else
    return num3
   end
end
puts max(2,6,3)

puts "Enter first number: "
numb1 = gets.chomp().to_f

puts "Enter your operator: "
op = gets.chomp()

puts "Enter second number: "
numb2 = gets.chomp().to_f

if op == "+"
    puts (numb1 + numb2)
    
elsif op == "-"
    puts (numb1 - numb2)
    
elsif op == "*"
    puts (numb1 * numb2)
elsif op == "/"
    puts (numb1 / numb2)
elsif op == "%"
    puts (numb1 % numb2)

elsif op == "**"
    puts (numb1 ** numb2)
else
    puts "Invalid operator"
end

def get_day_name(day)
    day_name = ""

    case day
    when "mon"
        day_name = "Monday"

    when "tue"
         day_name = "Tuesday"

    when "wed"
         day_name = "Wednesday"

    when "thu"
         day_name = "Thursday"

    when "fri"
         day_name = "Friday"

    when "sat"
         day_name = "Saturday"

    when "sun"
     day_name = "Sunday"
    else 
         "invalid abbreviation"
    end
    return day_name
end

puts get_day_name("mon")

index = 10
while index >= 1
    puts index
    index -= 1
    
end

secret_word = "Ambrose"
guess = ""
guess_count = 0
guess_limits = 4
out_of_guesses = false
 while guess != secret_word
    if guess_count < guess_limits and !out_of_guesses
        puts "Enter guess:"
    guess = gets.chomp()
    guess_count +=1
    else
       out_of_guesses = true 
    end
 end

if out_of_guesses == true
    puts "You loose"
else
    puts "Congratulations you just won a trophy!"  
end
=end
=begin
#for loop
friends = ["Amos", "Steve", "Angela", "Gina", "Sam"]
 friends.each do |friend|
    puts friend
 end

 # or 
  elements = ["a", "b" , "c", "d", "e"]
  for element in elements do
    puts element
  end

  for index in 0..5 do
    puts index
  end

  8.times do |index|
    puts "hi"
  end
#exponential function (raise to power in Math)
  def pow(base_num, pow_num)
    result = 1
pow_num.times do |index|
result = result *base_num
end
    return result
  end
  puts pow(4,3)


#Handling of error in ruby 
lucky_nums = [2,4,6,8]
 begin 
  puts  lucky_nums["dog"]
    puts numbe1 = 10/0
 rescue TypeError
    puts "wrong type"
 rescue ZeroDivisionError
puts "division by zero error"
 end

class Book
    attr_accessor :title, :author, :pages
    def initialize(title, author, pages)
        @title = title
        @author = author
        @pages = pages
    end
end

# object 2 instance of Book
book1 = Book.new("Ambrose","Essential Programming concept- beginner's guide",600 )

#book1.tittle = "Essential Programming concept- beginner's guide"
#book1.author = "Ambrose Isigba"
#book1.pages = 600

puts book1.title
puts book1.author
puts book1.pages

# object 2 instance of Book
book2 = Book.new("Afolabi","Basic computing",800 )

#book2.tittle = "Basic computing"
#book2.author = "Afolabi"
#book2.pages = 800

puts book2.title
puts book2.author
puts book2.pages

# object 3 instance of Book
book3 = Book.new("Favour","Beginner's guide in Data Science",700 )

#book3.tittle = "Beginner's guide in Data Science"
#book3.author = "Favour Ezeugwa"
#book3.pages = 700

puts book3.title
puts book3.author
puts book3.pages

class Student
    attr_accessor :name,:major,:gpa 
    def initialize(name,major,gpa)
        @name=name
        @major=major
        @gpa=gpa
    end

    def has_honor
        if @gpa >= 3.5
            return true
        end
        return false
    end
end

student1 = Student.new("Jim", "Business",3.0)
student2 = Student.new("Jack", "Law", 3.6)

puts student1.has_honor
puts student2.has_honor


#building multiple quize

class Question
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer =answer
    end
end
    p1 = "What color are Apple ? \n(a)red \n(b)Purple \n(c)Orange"
p2 = "What color are Banana ? \n(a)Pink \n(b)Red \n(c)Yellow"
p3 = "What color are Pearl ? \n(a)Yellow \n(b)Green \n(c)Orange"

questions = [
    Question.new(p1, "a"),
    Question.new(p2, "c"),
    Question.new(p3, "b")
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
end

puts ("You got " + score.to_s + "/" + questions.length().to_s)
end

run_test(questions)
=end

#inheritance in ruby OOP
class Chef 
    def make_chicken
        puts "make chicken"
        
    end

    def make_ice_cream
        puts "make ice creams"
        
    end

    def make_salad
        puts "make salad"
        
    end
end

#inheriting from Chef class
class Italian_chef < Chef

    #overwritting the make_ice_cream method in the Chef class
def make_ice_cream
    puts "make yorgurt"
end
def make_pasta
    puts "italian chef makes pasta"
end
end

chef1 = Chef.new()
#puts chef1.make_chicken
puts chef1.make_salad
#puts chef1.make_ice_cream

italianchef = Italian_chef.new()
puts italianchef.make_chicken
puts italianchef.make_ice_cream
puts italianchef.make_pasta
