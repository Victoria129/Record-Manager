require './genre'
require './label'
require './author'
require './book'
require './music_album'
require './game'

# Class to handle all creations
class Creations
  attr_accessor :create_author, :create_genre, :create_label

  def add_a_book
    puts 'Please add a Book with details below: '
    item_property_selection
    print 'Book Source: '
    source = gets.chomp
    print 'Cover state: '
    cover = gets.chomp
    print 'Publisher: '
    pub = gets.chomp
    print 'Publish date(YYYY-MM-DD): '
    p_date = gets.chomp
 
    Book.new(publisher: pub, cover_state: cover, genre: @created_genre, author: @created_author, source: source, label: @created_label, publish_date: p_date)
    puts 'Book added sucessfully!'
  end
  
  def add_an_album
    puts 'Please add a Music Album with details below: '
    item_property_selection
    print 'Music Album Source: '
    source = gets.chomp
    print 'Is the Music Album on Spotify? (Y/N): '
    validate_boolean
    print 'Publish date(YYYY-MM-DD): '
    validate_date 
    MusicAlbum.new(on_spotify: @onspot, genre: @created_genre, author: @created_author,
    source: source, label: @created_label, publish_date: @p_date)
    puts 'Music Album added sucessfully!'
  end

  def validate_date
    @p_date = gets.chomp
    begin
      validate = Date.parse(@p_date)
    rescue Date::Error
      puts 'Invalid date format. Please enter the date in the format YYYY-MM-DD.'
      return
    end
  end

  def validate_boolean
    bool = gets.chomp.upcase
    @onspot = nil
    unless bool == 'Y' || bool == 'N'
      puts 'Please enter a valid option'
      bool = gets.chomp.upcase
    end
    if bool == 'Y'
      @onspot = true
    else
      @onspot = false
    end
  end
  
  
  def add_a_game
    puts 'Please add a Game with details below: '
    item_property_selection
    print 'Game Source: '
    source = gets.chomp
    print 'Is the Game Multiplayer: '
    mp = gets.chomp.upcase
    if mp == 'Y'
      mp = true
    else
      mp = false
    end
    print 'Last played date(YYYY-MM-DD): '
    lp_date = gets.chomp
    print 'Publish date(YYYY-MM-DD): '
    p_date = gets.chomp
    
    Game.new(multiplayer: mp, last_played: lp_date, genre: @created_genre, author: @created_author, source: source, label: @created_label, publish_date: p_date)
     
    puts 'Game added sucessfully!'
  end

  def item_property_selection
    create_genre
    create_author
    create_label
  end
  
  def create_genre
    puts #blank
    puts 'Please create a Genre with the details below: '
    print 'Genre name: '
    genre_name = gets.chomp
    @created_genre = Genre.new(genre_name)
    puts 'Genre added successfully!' 
  end

  def create_author
    puts #blank
    puts 'Please create an Author with the details below: '
    print 'Author\'s first name: '
    f_name = gets.chomp
    print 'Author\'s last name: '
    l_name = gets.chomp
    @created_author = Author.new(f_name, l_name)
    puts 'Author added successfully!'   
  end
  
  def create_label
    puts #blank
    puts 'Please create an Author with the details below: '
    print 'Label title: '
    l_title = gets.chomp
    print 'Label colour: '
    l_colour = gets.chomp
    @created_label = Label.new(l_title, l_colour)
    puts 'Label added successfully!' 
    puts #blank  
  end

end
