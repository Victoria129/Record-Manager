require './item'

# MusicAlbum class for music album object creation.
class MusicAlbum < Item
  attr_accessor :on_spotify

  @music_albums = []
  def initialize(on_spotify:, **attributes)
    super(attributes)
    @on_spotify = on_spotify
    self.class.all << self
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10 && @on_spotify == true
  end

  def self.all
    @music_albums
  end
end
