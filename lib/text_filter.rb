class TextFilter
  attr_reader :string_input, :banned_words

  def initialize(string_input: string_input)
    @string_input = string_input
  end

  def banned_subtitute(string_input, banned_words = %w(red green yellow blue))
    banned_words.map!(&:downcase)

    string_input.split.map do |word|
        if includes_punctiation?(word)
          include_punctiation = word.chars.last
          word = word[0..-2]
          banned_words.include?(word.downcase) ? 
          word.gsub(/[aeiou]/i,"-") + include_punctiation : word + include_punctiation
        else
          banned_words.include?(word.downcase) ? word.gsub(/[aeiou]/i,"-") : word
        end
      end.join(" ")
  end


private

  def includes_punctiation?(word)
    word.match(/\W$/).nil? ? false : true
  end


end