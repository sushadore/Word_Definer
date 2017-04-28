class Word
  attr_reader(:new_word, :id)
  @@all_words = []

  define_method(:initialize) do |attributes|
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
      if word.id().eql?(identification)
        found_word = word
      end
    end
    found_word
  end

  def add_definition(definition)
    @definitions.push(definition)
  end
end

class Definition
  attr_reader(:new_definition)
  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @new_definition = attributes.fetch(:new_definition)
    @id = @@all_definitions.length + 1
  end

  def Definition.all
    @@all_definitions
  end

  def save
    @@all_definitions.push(self)
  end

  def id
    @id
  end
end
