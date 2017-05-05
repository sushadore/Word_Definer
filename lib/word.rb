class Word
  attr_reader(:new_word, :definitions, :id)
  @@all_words = []

  def initialize(attributes)
     @new_word = attributes.fetch(:new_word)
     @definitions = []
     @id = @@all_words.length + 1
  end

  def Word.all
    @@all_words
  end

  def save
    @@all_words.push(self)
  end

  def Word.find(identification)
    found_word = nil
    @@all_words.each do |word|
      if word.id.eql?(identification)
        found_word = word
      end
    end
    found_word
  end

  def add_definition(definition)
    @definitions.push(definition)
  end
end
