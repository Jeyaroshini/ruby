#   puts "Enter a value: "
# a = gets.chomp.to_i
# puts "Enter b value: "
# b = gets.chomp.to_i
# puts "#{a} + #{b} = #{a+b}" 

#-------------------------------------------------------------------------------------------------------------------------------------



# puts "Enter the range: "
#  range = gets.chomp.to_i
# for i in 1..range do
#   if i%2 == 0
#     puts i
#   end
# end

#-------------------------------------------------------------------------------------------------------------------------------------



# puts "Enter the range"
# range = gets.chomp.to_i
# array = []
# for i in 1..range do
#   input =  gets.chomp.to_i
#   array.push input
# end
# # puts "array length #{array.length}"
# for i in 0..(array.length)-1 do 
#   # puts array
#   if array[i]%2 == 0
#     puts array[i]
#   end
# end

#-------------------------------------------------------------------------------------------------------------------------------------



# array,value = [[1,2],[1,3]],0
# n = array.length
# for i in 0..(n-1) do
#   for j in 0..(n-1) do
#     value = value+array[i][j]
#   end
# end
# puts value

#-------------------------------------------------------------------------------------------------------------------------------------


=begin
seatAvailability = []
puts "Enter Source Address"
source = gets
puts "Enter Destination Address"
destination = gets
seatNumber = [100,101,102,103]
puts "Available bus seats: #{seatNumber}"
puts "Enter the Number of seats to get booked: "
numberOfSeats = gets.chomp.to_i
puts "Book the seat Number"
for i in 1..numberOfSeats do 
  input = gets.chomp.to_i
  seatAvailability.push input
end
for i in 0..(seatNumber.length)-1 do
  if (seatNumber[i] == seatAvailability[i])
    puts "Booking Confirmed for #{seatAvailability[i]}"
    puts "-------------------------"
    seatNumber[i] = "Booked"
  end
end
puts seatNumber
 
OUTPUT

Enter Source Address
Madurai
Enter Destination Address
Chennai
Available bus seats: [100, 101, 102, 103]
Enter the Number of seats to get booked:
2
Book the seat Number
100
101
Booking Confirmed for 100
-------------------------
Booking Confirmed for 101
-------------------------
Booked
Booked
102
103


#-------------------------------------------------------------------------------------------------------------------------------------

subjects = []
puts "Enter the grade"
grade = gets.chomp.to_i
puts "Enter the number of Subject:"
numberOfSubject = gets.chomp.to_i
for i in 1..numberOfSubject do
  puts "Enter #{i} subject"
  input = gets
  subjects.push input
end
mark = []
total = 0
for i in 0..(subjects.length)-1 do
  puts "Enter #{subjects[i]} mark"
  inputs = gets.chomp.to_i
  mark.push inputs
end
for i in 0..(mark.length)-1 do 
  total = total + mark[i]
end
puts "Total Mark:#{total}"


#-------------------------------------------------------------------------------------------------------------------------------------

class Addition
  def addTwoNumbers(num1,num2)
    puts "Addition of two numbers: #{num1+num2}"
  end
end
puts "Enter num1"
 num1 = gets.chomp.to_i
puts "Enter num2"
 num2 = gets.chomp.to_i
addition = Addition.new
addition.addTwoNumbers(num1,num2)

#-------------------------------------------------------------------------------------------------------------------------------------

hash_sample = {"name" => "Roshini", "gender" => "Female"}
puts hash_sample["name"]
hash_sample["city"] = "Madurai"
puts hash_sample
hash_sample.delete("city")
puts hash_sample
hash_sample.each do |key,value|
  puts "Key is #{key}"
  puts "Value is #{value}"
end


#-------------------------------------------------------------------------------------------------------------------------------------

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "Hi, my name is #{@name} and I am #{@age} years old."
  end
end

puts "Enter name: "
name = gets
puts "Enter Age: "
age = gets.chomp.to_i
person = Person.new(name,age)
person.introduce



#-------------------------------------------------------------------------------------------------------------------------------------

class Addition
  def initialize(num1,num2)
    @num1 = num1
    @num2 = num2
  end
  def addingTwoNumbers 
    puts "#{@num1+@num2}"
  end
end
puts "Enter num1: "
num1 = gets.chomp.to_i
puts "Enter num2: "
num2 = gets.chomp.to_i
addition = Addition.new(num1,num2)
addition.addingTwoNumbers


#-------------------------------------------------------------------------------------------------------------------------------------

class BankAccount 
  def initialize(balance)
    @balance = balance
  end
  def withdraw(amount)
    if amount > @balance
      puts "Insufficient Balance"
    else
      @balance = @balance - amount
    end
    puts "Available amount: #{@balance}"
  end
end
balance = 0
puts "Enter amount to be credited: "
creditedAmount = gets.chomp.to_i 
puts "Available balance: #{creditedAmount+balance}"
puts "Enter amount to be withdrawn"
withdrawn = gets.chomp.to_i
bankAccount = BankAccount.new(balance)
bankAccount.withdraw(withdrawn)

=end

#-------------------------------------------------------------------------------------------------------------------------------------

require 'httparty'
apiKey = "ab44217644c7e503735c74d989ba1dcd"
puts "Enter a location (city, state, or zip code):"
location = gets.chomp
response = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&units=metric&appid=#{apiKey}")
  data = response.parsed_response
  puts "Current temperature in #{data['name']}: #{data['main']['temp']}°C"
  puts "Weather conditions: #{data['weather'][0]['description']}"
  puts "Pressure: #{data['main']['pressure']}"
  puts "Visibility: #{data['visibility']}"

#-------------------------------------------------------------------------------------------------------------------------------------

require 'json'
require 'yaml'
require 'net/http'
randomUserUrl = URI( 'https://randomuser.me/api/')
response = Net::HTTP.get(randomUserUrl)
data = JSON.parse(response)
puts "Name: #{data['results'][0]['name']['first']}"
puts "City: #{data['results'][0]['location']['city']}"
puts "Email:  #{data['results'][0]['email']}"
yamlData = YAML.dump(data)
File.write('data.yaml', yamlData)





