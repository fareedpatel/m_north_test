class BannedWord
  attr_reader :words_array, :banned_words

  def initialize
    @words_array = []
    @banned_list = []
  end

  def parse_words(file_input)
    File.open(file_input).each do |list|
      @words_array << list.chomp
    end
  end
end