#reading files
File.open("basic.txt" , "r") do |file|
#puts file.readchar()
#puts file.readchar()
#puts file.readchar()
#puts file.readlines()
#puts file.readlines()[2]
 for line in file.readlines()
    puts line
 end
end
# or 
file = File.open("basic.txt" , "r")
puts file.read
file.close()

#append to files
File.open("basic.txt" , "a") do |file|
    file.write("\nHope, teacher")
end

#write to files
=begin
File.open("basic.txt" , "w") do |file|
    file.write("\nHope, teacher")
end
=end

#create new file call basic.html with text of Hello World inside h1 tag
File.open("basic.html" , "w") do |file|
    file.write("<h1>Hello World</h1>")
end

#append to files
File.open("basic.txt" , "r+") do |file|
    file.readline()
    file.write("over-ridden")
end