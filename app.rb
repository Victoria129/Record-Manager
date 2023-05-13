require './listings'
require './creations'
require './saves'
require './loads'
require 'json'


# Class to handle UI and it's methods
class App
  def initialize
    @listings = Listings.new
    @creations = Creations.new
  end

  def loading
    loads = Loads.new
    loads.load_book
    loads.load_album
    loads.load_game
  end

  def start
    loading
    puts 'Welcome to Our Catalogue'
    @menu_choice = ''
    menu until @menu_choice.upcase == 'X'
  end

  def menu
    sleep(1)
    puts #blank
    puts 'Please input a number or [X] to exit'
    puts '[1] List all Books', '[2] List all Music Albums', '[3] List all Games',
    '[4] List all Genres', '[5] List all Labels', '[6] List all Authors',
    '[7] Add a Book', '[8] Add a Music Album', '[9] Add a Game', '[X] Exit'
    puts # blank
    @menu_choice = gets.chomp
    puts # blank
    if @menu_choice.upcase == 'X'
        saves = Saves.new
        saves.book_saves
        saves.album_saves
        saves.game_saves
        puts 'Goodbye!'
        puts # blank
    elsif @menu_choice.to_i != 0 && @menu_choice.to_i.between?(1, 9)
      puts "OPTION CHOSEN [#{@menu_choice}]"
      puts # blank
      enter_menu
    else
      puts 'Please Enter a valid choice from the Menu'
      puts # blank
    end
  end

  def enter_menu
    puts # blank
    case @menu_choice
    when '1' then puts @listings.list_all_books
    when '2' then puts @listings.list_all_albums
    when '3' then puts @listings.list_all_games
    when '4' then puts @listings.list_all_genres
    when '5' then puts @listings.list_all_labels
    when '6' then puts @listings.list_all_authors
    when '7' then puts @creations.add_a_book
    when '8' then puts @creations.add_an_album
    when '9' then puts @creations.add_a_game
    end
  end
end
