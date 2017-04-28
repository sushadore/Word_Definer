class Word
attr_reader(:new_word)
@@all_words = []
  define_method(:initialize) do |attributes|
    @new_word = attributes.fetch(:new_word)
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
end
