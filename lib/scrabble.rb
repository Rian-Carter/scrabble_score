#!/usr/bin/env ruby
user_word = ARGV[0]


require('pry')

class Scrabble
  LETTER_SCORE = {
    "a" => 1,"e" => 1,"i" => 1,"o" => 1,"u" => 1,"l" => 1,"n" => 1,"r" => 1,"s" => 1,"t" => 1,
    "d" => 2,"g" => 2,
    "b" => 3,"c" => 3,"m" => 3,"p" => 3,
    "f" => 4,"h" => 4,"v" => 4,"w" => 4,
    "k" => 5,
    "j" => 8,"x" => 8,
    "q" => 10,"z" => 10
  }
  LETTER_SCORE.default = 0

  def word_score(word)
    LETTER_SCORE.fetch(word)
    # binding.pry
  end
  
  def splitword(word)
    word_array = word.split('')
    # binding.pry
  end
  
  def scorez(word)
    scores = LETTER_SCORE.values_at(*word.downcase.chars)
    scores.compact.reduce(0, :+)
  end
end



# scrabble = Scrabble.new
# puts 'What word would you like to score in Scrabble?'
# word = gets.chomp
# puts "okay, scoring #{word}!"
# puts scrabble.scorez(word)


scrabble = Scrabble.new
puts 'What word would you like to score in Scrabble?'
word = gets.chomp
# puts "#{word}, is worth: #{scrabble.word_score(word)}!"
# puts "#{word}, is worth: #{scrabble.splitword(word)}!"
puts "#{word}, is worth: #{scrabble.scorez(word)}!"