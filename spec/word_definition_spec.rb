# require 'rspec'
# require 'Word'
#
# describe 'Definition' do
#   describe '#new_definition' do
#     it 'returns an inputted definition' do
#       test_definition = Definition.new(:new_definition => 'a cozy spot')
#       expect(test_definition.new_definition).to(eq('a cozy spot'))
#     end
#   end
#
#   describe '.all' do
#     it 'returns an empty array' do
#       expect(Definition.all).to(eq([]))
#     end
#   end
#
#   describe '#save' do
#     it 'adds a definition to definition array' do
#       test_definition=Definition.new(:new_definition => 'a cozy spot')
#       Definition.all
#       expect(test_definition.save).to(eq([test_definition]))
#     end
#   end
#
#   describe '#id' do
#     it 'assigns a unique id to each definition' do
#       test_definition2=Definition.new(:new_definition => 'a cozy spot')
#       test_definition2.save
#       expect(test_definition2.id).to(eq(2))
#     end
#   end
# end
