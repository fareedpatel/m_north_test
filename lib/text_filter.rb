class TextFilter
  attr_reader :string_input, :banned_word

  def initialize(string_input: string_input)
    @string_input = string_input
    @banned_word = BannedWord.new
  end

end