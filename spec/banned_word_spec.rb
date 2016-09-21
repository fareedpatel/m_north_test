require 'banned_word'
describe BannedWord do
  subject(:banned_word) { described_class.new }
  let(:words_input_file) {'./words_input.txt'}

  describe 'loading banned words' do
    it 'can parse the words input file' do
      banned_word.parse_words(words_input_file)
      print banned_word.words_array
      expect(banned_word.words_array).to include "Banned word: red, green, yellow"
    end
  end
end