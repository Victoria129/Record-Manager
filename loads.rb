require 'json'
require './book'
require './music_album'
# require './game'
require './converter'

class Loads
  def load_book
    file_data = File.read('books.json')
    book_data = JSON.parse(file_data)

    books = book_data.map do |book|
      genre = GenreConverter.new(book['genre']['id'], book['genre']['name'])
      author = AuthorConverter.new(book['author']['id'], book['author']['first_name'], book['author']['last_name'])
      label = LabelConverter.new(book['label']['id'], book['label']['title'], book['label']['colour'])
      publish_date = Date.parse(book['publish_date'])

      BookConverter.new(
        id: book['id'],
        publisher: book['publisher'],
        cover_state: book['cover_state'],
        genre: genre,
        author: author,
        source: book['source'],
        label: label,
        publish_date: publish_date
      )
    end

    Book.all = books
  end

  def load_album
    file_data = File.read('albums.json')
    album_data = JSON.parse(file_data)
  
    albums = album_data.map do |album|
      genre = GenreConverter.new(album['genre']['id'], album['genre']['name'])
      author = AuthorConverter.new(album['author']['id'], album['author']['first_name'], album['author']['last_name'])
      label = LabelConverter.new(album['label']['id'], album['label']['title'], album['label']['colour'])
      publish_date = Date.parse(album['publish_date'])
  
      MusicAlbumConverter.new(
        id: album['id'],
        on_spotify: album['on_spotify'],
        genre: genre,
        author: author,
        source: album['source'],
        label: label,
        publish_date: publish_date
      )
    end
  
    MusicAlbum.all = albums
  end
  
  
  def load_game
    file_data = File.read('games.json')
    game_data = JSON.parse(file_data)
  
    games = game_data.map do |game|
      genre = GenreConverter.new(game['genre']['id'], game['genre']['name'])
      author = AuthorConverter.new(game['author']['id'], game['author']['first_name'], game['author']['last_name'])
      label = LabelConverter.new(game['label']['id'], game['label']['title'], game['label']['colour'])
      last_played = Date.parse(game['last_played'])
  
      GameConverter.new(
        id: game['id'],
        multiplayer: game['multiplayer'],
        last_played: last_played,
        genre: genre,
        author: author,
        source: game['source'],
        label: label,
        publish_date: game['publish_date']
      )
    end
  
    Game.all = games
  end  
end
