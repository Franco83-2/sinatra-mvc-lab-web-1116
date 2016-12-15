class PigLatinizer

  def piglatinize(string)
        loc = string.index(/[aeiou]/i)
          if loc == 0
            "#{string}way"
          else
            cut = string.slice!(0, loc)
            "#{string}#{cut}ay"
          end
  end

  def to_pig_latin(string)
    string.split(" ").map do |word|
        loc = word.index(/[aeiou]/i)
          if loc == 0
            "#{word}way"
          else
            cut = word.slice!(0, loc)
            "#{word}#{cut}ay"
          end
    end.join(" ")
  end

end
