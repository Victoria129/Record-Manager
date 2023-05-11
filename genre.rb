require './item'

# Genre class to define Item genre objects
class Genre
  attr_accessor :title, :colour

  @genres = []

  def initialize(title, colour)
    @id = Random.rand(1...1000)
    @title = title
    @colour = colour
    @items = []
    self.class.all << self
  end

  def add_items(item)
    @items << item
    item.genre = self
  end

  def self.all
    @genres
  end
end
