class String
  define_method(:scrabble_score) do
    self.downcase!
    score = 0
    letters = self.split("")
    letters.each do |letter|
      case letter
      when 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'
        score += 1
      when 'd', 'g'
        score += 2
      when 'b', 'c', 'm', 'p'
        score += 3
      when 'f', 'h', 'v', 'w', 'y'
        score += 4
      when 'k'
        score += 5
      when 'j', 'x'
        score += 8
      when 'q', 'z'
        score += 10
      else
        'broken'
      end
    end
    score
  end
end
