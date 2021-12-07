require('pry')

class ScrabbleScore
  def initialize(word)
    @word = word
  end
  def word
    @word
  end

  def get_score
    score=0
    arr=@word.split("")
    arr.each do |letter|
      case letter
      when 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'
        score+=1
      when 'd', 'g'
        score+=2
      when 'b', 'c', 'm', 'p'
        score+=3
      when 'f', 'h', 'v', 'w', 'y'
        score+=4
      when 'k'
        score+=5
      when 'j', 'x'
        score+=8
      when 'q', 'z'
        score+=10            
      else
        score+=0
      end
    end
    score
  end
end

# word_test_1 = ScrabbleScore.new("a")