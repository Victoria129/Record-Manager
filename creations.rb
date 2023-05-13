require './genre'
require './label'
require './author'
require './book'
require './music_album'
require './game'

# Class to handle all creations
def take_book_details
  puts 'Please add a Book with details below: '
  item_property_selection
  print 'Book Source: '
  @b_source = gets.chomp
  print 'Cover state: '
  @b_cover = gets.chomp
  print 'Publisher: '
  @b_pub = gets.chomp
  print 'Publish date(YYYY-MM-DD): '
  @bp_date = gets.chomp
end

def add_a_book
  take_book_details
  Book.new(publisher: @b_pub, cover_state: @b_cover, genre: @created_genre, author: @created_author, source: @b_source,
           label: @created_label, publish_date: @bp_date)
  puts 'Book added sucessfully!'
end

def take_album_details
  puts 'Please add a Music Album with details below: '
  item_property_selection
  print 'Music Album Source: '
  @m_source = gets.chomp
  print 'Is the Music Album on Spotify? (Y/N): '
  validate_boolean
  print 'Publish date(YYYY-MM-DD): '
  validate_date
end

def add_an_album
  take_album_details
  MusicAlbum.new(on_spotify: @onspot, genre: @created_genre, author: @created_author,
                 source: @m_source, label: @created_label, publish_date: @p_date)
  puts 'Music Album added sucessfully!'
end

def validate_date
  @p_date = gets.chomp
  begin
    Date.parse(@p_date)
  rescue Date::Error
    puts 'Invalid date format. Please enter the date in the format YYYY-MM-DD.'
    nil
  end
end

def validate_boolean
  bool = gets.chomp.upcase
  @onspot = nil
  unless %w[Y N].include?(bool)
    puts 'Please enter a valid option'
    bool = gets.chomp.upcase
  end
  @onspot = bool == 'Y'
end

def take_game_details
  puts 'Please add a Game with details below: '
  item_property_selection
  print 'Game Source: '
  @source = gets.chomp
  print 'Is the Game Multiplayer: '
  @mp = gets.chomp.upcase
  @mp = @mp == 'Y'
end

def add_a_game
  take_game_details
  print 'Last played date(YYYY-MM-DD): '
  lp_date = gets.chomp
  print 'Publish date(YYYY-MM-DD): '
  p_date = gets.chomp

  Game.new(multiplayer: @mp, last_played: lp_date, genre: @created_genre, author: @created_author, source: @source,
           label: @created_label, publish_date: p_date)

  puts 'Game added sucessfully!'
end

def item_property_selection
  create_genre
  create_author
  create_label
end

def create_genre
  puts # blank
  puts 'Please create a Genre with the details below: '
  print 'Genre name: '
  genre_name = gets.chomp
  @created_genre = Genre.new(genre_name)
  puts 'Genre added successfully!'
end

def create_author
  puts # blank
  puts 'Please create an Author with the details below: '
  print 'Author\'s first name: '
  f_name = gets.chomp
  print 'Author\'s last name: '
  l_name = gets.chomp
  @created_author = Author.new(f_name, l_name)
  puts 'Author added successfully!'
end

def create_label
  puts # blank
  puts 'Please create an Author with the details below: '
  print 'Label title: '
  l_title = gets.chomp
  print 'Label colour: '
  l_colour = gets.chomp
  @created_label = Label.new(l_title, l_colour)
  puts 'Label added successfully!'
  puts # blank
end
