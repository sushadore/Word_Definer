require 'rspec'
require 'word'

describe 'Word' do
  describe '#new_word' do
    it 'returns an inputted word' do
      test_word = Word.new(:new_word => 'Cubby')
      expect(test_word.new_word).to(eq('Cubby'))
    end
  end

  describe '.all' do
    it 'returns an empty array' do
      expect(Word.all).to(eq([]))
    end
  end

  describe '#save' do
    it 'adds word to array' do
      test_word=Word.new(:new_word => 'Cubby')
      Word.all
      expect(test_word.save).to(eq([test_word]))
    end
  end

  describe '.clear' do
    it 'clears the all_words array' do
      test_word=Word.new(:new_word => 'Cubby')
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

  describe '#id' do
    it 'assigns a unique id to each word' do
      test_word=Word.new(:new_word => 'Cubby')
      test_word.save
      expect(test_word.id).to(eq(1))
    end
  end

  describe '.find' do
    it('returns a word by its id number') do
      test_word1 = Word.new(:new_word => 'Cubby')
      test_word1.save()
      test_word2 = Word.new(:new_word => 'Tubby')
      test_word2.save
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end
end
