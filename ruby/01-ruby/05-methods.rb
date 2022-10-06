# Methods return the last expression that was evaluated
def my_method(arg_one, arg_def = 10)
  arg_one * arg_def
end

puts(my_method(5), my_method(3, 4), "\n")

# Returns can be implicit or explicit
def even_odd(number)
  unless number.is_a? Numeric
    return "Input is not numeric"
  end

  if number % 2 == 0
    "Number is even"
  else
    "Number is odd"
  end
end

puts(even_odd(18), even_odd(31), even_odd(:symbol), "\n")

# Predicate methods are methods that return a boolean, the convention is to
# name them with a '?' at the end

# Bang methods end with '!', and indicate mutation

my_str = "DO NOT SCREAM"
my_str_ref = my_str
my_str.downcase!

puts(
  18.even?,
  31.odd?,
  10.between?(5, 15),
  my_str,
  my_str_ref,
  "\n"
)

# Enumerables are built-in methods in arrays and hashes that implement
# iterative behavior

nums = [-5, -2, 7, 18, 31]
puts(nums.join(', '))

# Use curly braces for one line blocks
nums.each {|num| puts num}

# Use 'do' for multi line blocks
nums.each do |num|
  num_double = num * 2
  num_square = num ** 2
  print("#{num} #{num_double} #{num_square} \n")
end

puts("\n")

# Each has an index version
nums.each_with_index {|num, idx| puts "index: #{idx} number: #{num}"}
puts("\n")

# Map for a 1 to 1 mapping, select to filter values, reduce to
# accumulate a value

nums_halves = nums.map {|num| num / 2}
nums_odds = nums.select {|num| num % 2 != 0}
nums_sum = nums.reduce {|acc, num| acc + num}

puts(
  nums.join(', '),
  nums_halves.join(', '),
  nums_odds.join(', '),
  nums_sum,
  "\n"
)

# Predicate enumerables: include? any? all? none?

nums_has_18 = nums.include? 18
nums_has_gt10 = nums.any? {|num| num > 10}
nums_all_gt10 = nums.all? {|num| num > 10}
nums_none_100 = nums.none? {|num| num == 100}

puts(
  nums_has_18,
  nums_has_gt10,
  nums_all_gt10,
  nums_none_100,
  "\n"
)
