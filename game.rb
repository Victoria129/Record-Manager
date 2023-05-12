require './item'

# class for creating game object for items collection
class Game < Item
  attr_accessor :publisher, :cover_state
  attr_reader :last_played, :multiplayer

  @games = []
  def initialize(multiplayer:, last_played:, **args)
    super(**args)
    @multiplayer = multiplayer
    @last_played = Date.parse(last_played)
    self.class.all << self
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10 && Date.today.year - @last_played.year > 2
  end

  def self.all
    @games
  end
end
