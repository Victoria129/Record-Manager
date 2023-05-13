require './item'

# Author class to define properties
class Author
  attr_accessor :first_name, :last_name

  @authors = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @items = []
    self.class.all << self
  end

  def add_items(item)
    @items << item
    item.author = self
  end

  def self.all
    @authors
  end
end
