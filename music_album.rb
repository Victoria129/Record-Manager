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
    super && @on_spotify == true
  end

  def self.all
    @music_albums
  end

  def self.all=(albums)
    @music_albums = albums
  end
end
