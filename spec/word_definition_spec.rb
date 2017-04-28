require 'rspec'
require 'word'

describe 'Definition' do
  describe '#definition' do
    it 'returns an inputted definition' do
      test_definition = Definition.new(:definition => 'a cozy spot')
      expect(test_definition.definition).to(eq('a cozy spot'))
    end
  end
end
