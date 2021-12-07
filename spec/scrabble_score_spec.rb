require('rspec')
require('scrabble_score.rb')


describe("ScrabbleScore#get_score") do 
  word_test_1 = ScrabbleScore.new("a")
  word_test_3 = ScrabbleScore.new("at")
  word_test_4 = ScrabbleScore.new("aei123")
  word_test_5 = ScrabbleScore.new("giraffe")
  word_test_6 = ScrabbleScore.new("i like dogs")
  word_test_7 = ScrabbleScore.new("./moby10b.txt")
  
  it("should return score of 1 for all 1-point letters") do
    expect(word_test_1.get_score).to(eq(1))
  end
  it("should return score of 1 for all 1-point letters") do
    expect(word_test_3.get_score).to(eq(2))
  end
  it("should return score of 3 for aei123") do
    expect(word_test_4.get_score).to(eq(3))
  end
  it("should return score of 14 for giraffe") do
    expect(word_test_5.get_score).to(eq(14))
  end
  it("should return score of  for 'i like dogs'") do
    expect(word_test_6.get_score).to(eq(15))
  end
  it("should return score of a lot for moby dick file path") do
    expect(word_test_7.get_score).to(eq(1604064))
  end
end

