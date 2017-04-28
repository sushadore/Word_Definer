require 'rspec'
require 'Word'

describe 'Definition' do
  describe '#new_definition' do
    it 'returns an inputted definition' do
      test_word = Definition.new(:new_definition => 'a cozy spot')
      expect(test_word.new_definition).to(eq('a cozy spot'))
    end
  end

  describe '.all' do
    it 'returns an empty array' do
      expect(Definition.all).to(eq([]))
    end
  end

  describe '#save' do
    it 'adds a definition to definition array' do
      test_definition=Definition.new(:new_word => 'Cubby')
      Word.all
      expect(test_word.save).to(eq([test_word]))
    end
  end
end
