require('rspec')
require('scrabble')

describe Scrabble do
  it("should take in a word and split it into individual letters") do
    newSplit = Scrabble.new
    splitUpWord = newSplit.splitword('dog')
    expect(splitUpWord).to(eq(['d', 'o', 'g']))
  end

  it("should take in a single letter and return the value") do
    oneLetter = Scrabble.new
    testVar = oneLetter.word_score("j")
    expect(testVar).to(eq(8))
  end

  it("should take in a word and return the score based on the value of each letter") do
    word = Scrabble.new
    testWord = word.scorez("zoo")
    expect(testWord).to(eq(12))
  end
end
















# attr_reader :score
# @@hash = {"aeioulnrst" => 1, "dg" => 2, "bcmp" => 3, etc...}


#   attr_reader :score
#   @@hash = {1 => "aeioulnrst",2 => "dg", 3 => "bcmp", 4 => "fhvwy",5 => "k", 8 =>"jx", 10 => "qz"}

# LETTER_VALUES = {
#   /[AEIOULNRST]/ => 1,
#   /[DG]/ => 2,
#   /[BCMP]/ => 3,
#   /[FHVWY]/ => 4,
#   /[K]/ => 5,
#   /[JX]/ => 8,
#   /[QZ]/ => 10
# }

# @values = { 1 =>  ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
# 2 =>  ['D', 'G'],
# 3 =>  ['B', 'C', 'M', 'P'],
# 4 =>  ['F', 'H', 'V', 'W', 'Y'],
# 5 =>  ['K'],
# 8 =>  ['J', 'X'],
# 10 => ['Q', 'Z']
# }