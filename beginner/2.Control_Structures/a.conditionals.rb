# if else
x=100
fruit='apple'
if x==1
    puts x
end

# conditionals: if

if fruit=='apple'
    puts fruit.upcase
end

# conditionals: if, else

if fruit!='apple'
    puts fruit.upcase
else
    puts 'no fruit'
end

# conditionals: if, elsif & else

if x<=10
    puts 'less than 10'
elsif x<=5
    puts 'less than 5'
else
    puts 'greater than 10'
end

# conditionals: unless

unless x<10
    puts 'he is greater than 10'
end

array=['1']

unless array.empty?
    puts 'do something!'
end

search_result=''
unless search_result.nil?
    puts 'do this'
end

# conditionals: case with booleans
count=120
case
when count == 0
    puts "nobody"
when count == 1
    puts "1 person"
when (2..5).include?(count)
    puts "several people"
else
    puts "many people"
end

# conditonals: case with comparisons
y=2
case y
when 0
    puts "nobody"
when 1
    puts "1 person"
when 2..5
    puts "several people"
else
    puts "many people"
end

# ternary operators
t=10
puts t == 1 ? "#{t} person" : "#{t} people"

# or operator
x=1
y=1001
z=2001
x=y||z
if y
    x=y
else
    x=z
end
puts x


# or-equal operator
limit=nil
DEFAULT=100
max=limit||DEFAULT
puts max
# same as
# unless x
#     x=y
# end
# puts x

# Conditionals: statement modifiers
greeting_enabled=true
puts "Hello" if greeting_enabled
score=5
MAX_SCORE=100
score += 10 unless score >= MAX_SCORE
puts score