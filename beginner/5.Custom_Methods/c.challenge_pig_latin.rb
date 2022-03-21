#!/usr/bin/env ruby

# piglatin is a children's game where words are converted into alternate versions
# according to simple set of rules

# RULES
# Consonants: pig => igpay, latin => atinlay
# Vowels: elevator => elevatoray
# Consonant Cluster: glove => oveglay, where => erewhay
# Tip: A consonant cluster is all letters before the first vowel.
# write a pig_latin method that accepts a word 

VOWELS=['a','e','i','o','u']

def pig_latin(word)
    word_array=word.split('')
    first_vowel=word_array.find {|v| VOWELS.include?(v)}
    first_vowel_pos=word_array.find_index(first_vowel)
    first_vowel ? (first_vowel_pos == 0 ? word+'ay' : word_array[first_vowel_pos..-1].join('') + word_array[0..first_vowel_pos-1].join('') + 'ay') : word
end

puts pig_latin('pig')
puts pig_latin('elevator')
puts pig_latin('glove')
puts pig_latin('where')
puts pig_latin('simbale')

puts "Enter a sentence: "
sentence=gets.chomp
sentence.split(' ').each do |word|
    print pig_latin(word).capitalize+" "
end