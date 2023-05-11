require './item'

# Genre class to define Item genre objects
class Genre
  attr_accessor :name

  @genres = []

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
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
