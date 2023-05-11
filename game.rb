require './item'

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
end
