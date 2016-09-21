require 'text_filter'

describe TextFilter do
  subject(:text_filter) { described_class.new( string_input: string_input) }

  let(:string_input) { 'This is a green and evergreen greenbelt' }

    describe 'String input' do
      it 'allows you to pass string and initalize' do
        expect(text_filter.string_input).to eq string_input
      end
    end

    describe 'BannedWords' do
      it 'can be assigned when initialized' do
        expect(text_filter.banned_word).to be_instance_of BannedWord
      end
    end
end