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

  # def initialize(word)
  #   @word = letters.split("")
  # end

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

  
  
  

  # def score
  #   word_score = 0
  #   LETTER_SCORE.each do |letters, value|
  #     word_score += (@word.scan(letters).count * value)
  # end


#  def bundle(word)
#    x=0
#    new_array=splitword(word)
  #  new_array.each do |array_element|
#    y=word_score(array_element)
#    current_score=x+y
  #  end
#    current_score
#  end


# end

  # def score
  #   @letters.inject(0) |total_score, letter|
  #     total_score + LETTER_SCORE[letter]
  # end
# end

# def self.score(word)
#   new(word).score
# end


  # def initialize(word)
  #   @word = word
  # end

