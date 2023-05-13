require './book'
require './genre'

class BookConverter
  attr_accessor :id, :publisher, :cover_state, :genre, :author, :source, :label, :publish_date

  def initialize(id:, publisher:, cover_state:, genre:, author:, source:, label:, publish_date:)
    @id = id
    @publisher = publisher
    @cover_state = cover_state
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
  end
end

class MusicAlbumConverter
  attr_accessor :id, :on_spotify, :genre, :author, :source, :label, :publish_date

  def initialize(id:, on_spotify:, genre:, author:, source:, label:, publish_date:)
    @id = id
    @on_spotify = on_spotify
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
  end
end

class GameConverter
  attr_accessor :multiplayer, :last_played, :genre, :author, :source, :label, :publish_date, :id

  def initialize(id:, multiplayer:, last_played:, genre:, author:, source:, label:, publish_date:)
    @id = id
    @multiplayer = multiplayer
    @last_played = last_played
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = publish_date
  end
end



class GenreConverter
  attr_accessor :name, :id

  def initialize(id, name)
    @id = id
    @name = name
    Genre.all << self
  end
end

class AuthorConverter
  attr_accessor :first_name, :last_name, :id
  
  def initialize(id, first_name, last_name)
    @id = id
    @first_name = first_name
    @last_name = last_name
    Author.all << self
  end
end

class LabelConverter
  attr_accessor :title, :colour, :id
  
  def initialize(id, title, colour)
    @id = id
    @title = title
    @colour = colour
    Label.all << self
  end
end

