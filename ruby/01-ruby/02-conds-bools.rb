# Only 'nil' and 'false' are falsy, everything else is truthy

# Conditional flow with 'if' blocks

puts("If statements")

is_hungry = true
is_noisy = false
is_purple = false
is_cold = true
is_happy = true
quantity = 15

# Simple 'if' with no 'else'
if is_hungry
  puts("I'm hungry!")
end

# One line 'if' with no 'else' using 'then'
if is_noisy then puts("I'm noisy!") end

# Simple 'if' with 'else'
if is_purple
  puts("It's purple!")
else
  puts("It's not purple.")
end

# One line 'if' with 'else' using 'then'
if is_cold then puts("It's cold!") else puts("It's not cold.") end

# Ternary operator
is_happy ? puts("I'm happy!") : puts("I'm not happy.")

if quantity % 2 == 0
  puts("Quantity is a multiple of 2")
elsif quantity % 3 == 0
  puts("Quantity is a multiple of 3")
else
  puts("Quantity is neither a multiple of 2 or 3")
end

puts("\n")

# eql? checks both the value type and the actual value it holds
# equal? checks whether both values are the exact same object in memory
# <=> (spaceship operator) -1 if <, 0 if =, 1 if >

# Logical operators

# For and you can use '&&' or 'and'
# For or you can use '||' or 'or'
# Word versions have very low presedence, lower than '='
# Usually you want to avoid the word version

# For not you can use '!'

# Case statements

puts("Case statements")

quality = "H"

quality_check = case quality
  when "A" then "High quality"
  when "B" then "Mid quality"
  when "C" then "Low quality"
  else "Very low quality"
end

puts(quality_check)

case quality
  when "A"
    puts("Excelent job!")
  when "B"
    puts("Good job!")
  when "C"
    puts("Need more practice!")
  else
    puts("Oops!")
end

puts("\n")

# Unless statement

print_flag = false

unless print_flag
  puts("Unless executed, print_flag = #{print_flag}")
else
  puts("Unless else executed, print_flag = #{print_flag}")
end
