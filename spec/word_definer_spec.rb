require 'rspec'
require 'word'

describe 'Word' do
  describe '#new_word' do
    it 'returns an inputted word' do
      test_word = Word.new(:new_word => 'Cubby')
      expect(test_word.new_word).to(eq('Cubby'))
    end
  end
end
