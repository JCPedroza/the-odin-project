def array_to_str array
  array.join(', ')
end

# Arrays are ordered lists of dynamic size

nums = [2, 4, 6, 8, 10]
nums_str = array_to_str nums

nums_first = nums.first
nums_first_two = array_to_str nums.first 2
nums_last = nums.last
nums_last_two = array_to_str nums.last 2

nums_idx0 = nums[0]
nums_idx1 = nums[1]
nums_idxn1 = nums[-1]
nums_idxn2 = nums[-2]


puts("Arrays", nums_str, nums_first, nums_first_two, nums_last, nums_last_two)
puts("\n", nums_idx0, nums_idx1, nums_idxn1, nums_idxn2, "\n")

# Add to end of array using 'push' or shovel operator '<<'

nums.push 12
nums << 14

puts(array_to_str(nums), "\n")

# Add to start of array using 'unshift'

nums.unshift -2

puts(array_to_str(nums), "\n")

# Remove and return the first element with 'shift'

shift_first = nums.shift
shift_second = nums.shift

puts(shift_first, shift_second, array_to_str(nums), "\n")

# Remove and return the last element with 'pop'

pop_first = nums.pop
pop_second = nums.pop

puts(pop_first, pop_second, array_to_str(nums), "\n")

# Some common array methods: empty?, length, reverse, include?, join

# Hashes

hash_old_form = {
  "some key" => "some value",
  "other key" => "other value"
}

hash_new_form = {
  keyone: true,
  keytwo: false,
}

puts(
  hash_old_form,
  hash_new_form,
  hash_old_form["some key"],
  hash_new_form[:keyone],
  hash_new_form[:keynot], # This returns nil, fails silently
  # hash_new_form.fetch(:keynot) throws KeyError, doesn't fail silently
  hash_new_form.fetch(:keynot, true), # Or you can provide default value
  "\n"
)

best_hash = {
  one: 1,
  two: 2,
  three: -97,
  temp: -1
}

best_hash[:three] = 3
best_hash[:four] = 4
best_hash.delete(:temp)

puts(best_hash)

# Some common hash methods: keys, values, merge
