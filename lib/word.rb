class Word
attr_reader(:new_word)

    define_method(:initialize) do |attributes|
      @new_word = attributes.fetch(:new_word)
    end
end
