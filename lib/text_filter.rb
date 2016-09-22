class TextFilter
  attr_reader :string_input

  def initialize(string_input: string_input)
    @string_input = string_input
  end

  def banned_subtitute(string_input, banned_words = %w(red green yellow blue))
    banned_words.map!(&:downcase)

    string_input.split.map do |word|
        if includes_punctuation?(word)
          include_punctuation = word.chars.last
          word = word[0..-2]
          banned_words.include?(word.downcase) ? 
          word.gsub(/[aeiou]/i,"-") + include_punctuation : word + include_punctuation
        else
          banned_words.include?(word.downcase) ? word.gsub(/[aeiou]/i,"-") : word
        end
      end.join(" ")
  end

private

  def includes_punctuation?(word)
    word.match(/\W$/).nil? ? false : true
  end
end