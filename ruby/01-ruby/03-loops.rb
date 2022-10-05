START = 1
LIMIT = 5

# The 'loop' loop is an infinite loop (you can stop it with 'break')
loop_count = START

# The 'do' here is not optional
loop do
  puts "Loop count: #{loop_count}"
  loop_count += 1
  break unless loop_count < LIMIT
end

print("\n")

# While loop

while_count = START

# The 'do' here is optional
while while_count < LIMIT do
  puts "While count: #{while_count}"
  while_count += 1
end

print("\n")

# Until loop

until_count = START

# The 'do' here is optional
until until_count >= LIMIT do
  puts "Until count: #{until_count}"
  until_count += 1
end

print("\n")

# Ranges

inclusive_range = 1..5
exclusive_range = 1...5

puts(inclusive_range, exclusive_range, "\n")

# For loop

# The 'do' here is optional
for num in START...LIMIT do
  puts("For count: #{num}")
end

puts("\n")

# Times loop (exclusive)

# The 'do' here is not optional
LIMIT.times do
  puts "In a times loop."
end

puts("\n")

LIMIT.times do |num|
  puts "Times count: #{num}"
end

puts("\n")

# Upto and downto loop (both all inclusive)

START.upto(LIMIT) {|num| puts "Upto count: #{num}"}

puts("\n")

LIMIT.downto(START) {|num| puts "Downto count: #{num}"}
