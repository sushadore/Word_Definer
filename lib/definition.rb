class Definition
  attr_reader(:new_definition)
  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @new_definition = attributes.fetch(:new_definition)
  end

  def Definition.all
    @@all_definitions
  end

  def save
    @@all_definitions.push(self)
  end
end
