require 'text_filter'

describe TextFilter do
  subject(:text_filter) { described_class.new( string_input: string_input) }

  let(:banned_words)    { 'red green blue yellow' }
  let(:exceptions_list) { 'covered coloured evergreen greenbelt blues' }
  let(:string_input)    { 'my favourite colours are green and blue' }
  let(:string_input_2)  { 'I would like RED, Blue and Green clothes' }
  let(:string_input_3)  {'No houses on the greenbelt'}


    describe 'String input' do
      it 'allows you to pass string and initalize' do
        expect(text_filter.string_input).to eq string_input
      end
    end

    describe 'Banned Subtitute' do

      it 'returns r-d when string input is red' do
        expect(text_filter.banned_subtitute('red')).to eq "r-d"
      end

      it 'returns bl-- when string input is blue' do
        expect(text_filter.banned_subtitute('blue')).to eq "bl--"
      end

      it "replaces vowels with (-) for banned words" do
        expect(text_filter.banned_subtitute(string_input)).to eq "my favourite colours are gr--n and bl--"
      end

      it 'returns the string with the punction' do
          expect(text_filter.banned_subtitute(string_input_2)).to eq "I would like R-D, Bl-- and Gr--n clothes"
      end
    end

    describe 'Exceptions List' do
      it 'does not alter words part of the exceptions list' do
        expect(text_filter.banned_subtitute(string_input_3)).to eq "No houses on the greenbelt"
    end
  end
end