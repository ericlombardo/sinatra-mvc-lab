class PigLatinizer
  attr_reader :phrase

 
  def piglatinize(phrase)
    @phrase = phrase.split(' ')
    @consonant = %w[b c d f g h j k l m n p q r s t v w x z y]
    @vowels = %w[a e i o u]
    string = @phrase.map do |w|
      if @vowels.include?(w[0].downcase)
        convert_vowels(w) 
      elsif @consonant.include?(w[0].downcase)
        convert_consonant(w)
      else
        w
      end
    end
    string.join(' ')
  end
      
  def convert_vowels(word)
      "#{word}way"
  end

  def convert_consonant(word)
    i ||= 1
    while @consonant.include?(word[i])
      i += 1
    end
    word_ending = "#{word.slice!(0,i)}ay"
    "#{word}#{word_ending}"
  end
end