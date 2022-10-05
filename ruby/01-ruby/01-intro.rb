# Everything in Ruby is an object, so there are no primitive types.

# Types

int = 3      # Integer
float = 3.5  # Float
str = "abc"  # String
symb = :def  # Symbol
bool = true  # Boolean (TrueClass)

puts("Types", int, float, str, symb, bool, "\n")

# Strings

# You can use double or single quotes for string literals, but they aren't
# equivalent. String interpolation and scaping are only available through
# double quotes.

# String interpolation

inter = "1 + 2 is #{1 + 2}"
no_inter = '1 + 2 is #{1 + 2}'

puts("Interpolation", inter, no_inter, "\n")

# String concatenation

word_a = "x" + "y" + "z"
word_b = "x".concat("y").concat("z")
word_c = "x" << "y" << "z"

puts("Concatenation", word_a, word_b, word_c, "\n")

# Substrings

whole = "abcdefhgi"
sub_a = whole[0]    # a
sub_b = whole[2..4] # cde, inclusives [from, to]
sub_c = whole[2, 4] # cdef, [index, size]

puts("Substrings", sub_a, sub_b, sub_c, "\n")

# Strings can be mutated (unlike most other languages)

mut_str = "mutation"
nomut_str = "no mutation"

str_ref_a = mut_str
str_ref_b = nomut_str.upcase
mut_str.upcase!

puts("String mutation", mut_str, nomut_str, str_ref_a, str_ref_b, "\n")

# Symbols

# Symbols are like strings, but equal values point to a singleton

symb_a = :opq
symb_b = :opq
symb_a_id = symb_a.object_id
symb_b_id = symb_b.object_id

str_a = "opq"
str_b = "opq"
str_a_id = str_a.object_id
str_b_id = str_b.object_id

puts("Symbols and ids", symb_a, symb_b, symb_a_id, symb_b_id, "\n")
puts("Strings and ids", str_a, str_b, str_a_id, str_b_id, "\n")

# Booleans

# There are only two falsy values: false and nil

val_a = if nil then "nil is truthy" else "nil is falsy" end
val_b = if false then "false is truthy" else "false is falsy" end

puts("Falsy values", val_a, val_b, "\n")

# Input

print("write", " something", " to continue", "\n")
in_str = gets
puts(in_str, "\n")
