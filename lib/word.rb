class Word
attr_reader(:new_word, :id)
@@all_words = []
  define_method(:initialize) do |attributes|
    @new_word = attributes.fetch(:new_word)
    @id = @@all_words.length + 1
  end

  def Word.all
    @@all_words
  end

  def save
    @@all_words.push(self)
  end

  def Word.clear
    @@all_words=[]
  end

  def Word.find(id)
    found_word = nil
    @@all_words.each do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

end
