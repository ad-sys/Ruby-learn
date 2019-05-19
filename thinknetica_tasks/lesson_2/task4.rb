alphabet_hash = {}
vowels_hash = {}

alphabet = ('a'..'z').to_a

vowels = %w[a e i o u]

alphabet.each.with_index(1) { |letter, index| alphabet_hash[letter] = index }

puts alphabet_hash

alphabet.each_with_index do |letter, index|
  vowels_hash[letter] = index + 1 if vowels.include?(letter)
end

puts vowels_hash
