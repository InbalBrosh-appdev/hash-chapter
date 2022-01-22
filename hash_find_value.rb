# Write a program that:
#   Asks the user for an Integer, then checks to see if that integer is
#   a value of any of the keys in sample_hash.
#   If you find the number, print out "100 is under the key: a."
#   If you don't find the number print out "Could not find the integer 100"

sample_hash = {:a => 100, :b => 200, :c => 300, :d => 400, :e => rand(200), :f => 600, :g => 0 }

p "Enter an integer to find:"

entered_number = gets.chop.to_i
keys = sample_hash.keys
was_found = false

keys.each do |key|
  if entered_number == sample_hash[key]
    p "#{entered_number} is under the key: #{key}"
    was_found = true
  end
end

if !was_found
  p "Could not find the integer #{entered_number}"
end