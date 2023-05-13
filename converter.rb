require './book'
require './genre'

# Psuedo class to convert json to object
class BookConverter
  attr_accessor :id, :publisher, :cover_state, :genre, :author, :source, :label, :publish_date

  def initialize(options)
    @id = options[:id]
    @publisher = options[:publisher]
    @cover_state = options[:cover_state]
    @genre = options[:genre]
    @author = options[:author]
    @source = options[:source]
    @label = options[:label]
    @publish_date = options[:publish_date]
  end
end

# Psuedo class to convert json to object
class MusicAlbumConverter
  attr_accessor :id, :on_spotify, :genre, :author, :source, :label, :publish_date

  def initialize(options)
    @id = options[:id]
    @on_spotify = options[:on_spotify]
    @genre = options[:genre]
    @author = options[:author]
    @source = options[:source]
    @label = options[:label]
    @publish_date = options[:publish_date]
  end
end

# Psuedo class to convert json to object
class GameConverter
  attr_accessor :multiplayer, :last_played, :genre, :author, :source, :label, :publish_date, :id

  def initialize(options)
    @id = options[:id]
    @multiplayer = options[:multiplayer]
    @last_played = options[:last_played]
    @genre = options[:genre]
    @author = options[:author]
    @source = options[:source]
    @label = options[:label]
    @publish_date = options[:publish_date]
  end
end

# Psuedo class to convert json to object
class GenreConverter
  attr_accessor :name, :id

  def initialize(id, name)
    @id = id
    @name = name
    Genre.all << self
  end
end

# Psuedo class to convert json to object
class AuthorConverter
  attr_accessor :first_name, :last_name, :id

  def initialize(id, first_name, last_name)
    @id = id
    @first_name = first_name
    @last_name = last_name
    Author.all << self
  end
end

# Psuedo class to convert json to object
class LabelConverter
  attr_accessor :title, :colour, :id

  def initialize(id, title, colour)
    @id = id
    @title = title
    @colour = colour
    Label.all << self
  end
end
