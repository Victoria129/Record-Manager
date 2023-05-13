require 'json'
require './converter'

# rubocop:disable Metrics/AbcSize
def load_book
  return unless File.exist?('books.json') && !File.zero?('books.json')

  @book_data = JSON.parse(File.read('books.json'))

  book_file_load
end

def book_file_load
  books = @book_data.map do |book|
    genre = GenreConverter.new(book['genre']['id'], book['genre']['name'])
    author = AuthorConverter.new(book['author']['id'], book['author']['first_name'], book['author']['last_name'])
    label = LabelConverter.new(book['label']['id'], book['label']['title'], book['label']['colour'])
    publish_date = Date.parse(book['publish_date'])

    BookConverter.new(id: book['id'], publisher: book['publisher'], cover_state: book['cover_state'], genre: genre,
                      author: author, source: book['source'], label: label, publish_date: publish_date)
  end
  Book.all = books
end

def load_album
  return unless File.exist?('albums.json') && !File.zero?('albums.json')

  @album_data = JSON.parse(File.read('albums.json'))

  album_file_load
end

def album_file_load
  albums = @album_data.map do |album|
    genre = GenreConverter.new(album['genre']['id'], album['genre']['name'])
    author = AuthorConverter.new(album['author']['id'], album['author']['first_name'], album['author']['last_name'])
    label = LabelConverter.new(album['label']['id'], album['label']['title'], album['label']['colour'])
    publish_date = Date.parse(album['publish_date'])

    MusicAlbumConverter.new(id: album['id'], on_spotify: album['on_spotify'], genre: genre, author: author,
                            source: album['source'], label: label, publish_date: publish_date)
  end

  MusicAlbum.all = albums
end

def load_game
  return unless File.exist?('games.json') && !File.zero?('games.json')

  @game_data = JSON.parse(File.read('games.json'))

  game_file_load
end

def game_file_load
  games = @game_data.map do |game|
    genre = GenreConverter.new(game['genre']['id'], game['genre']['name'])
    author = AuthorConverter.new(game['author']['id'], game['author']['first_name'], game['author']['last_name'])
    label = LabelConverter.new(game['label']['id'], game['label']['title'], game['label']['colour'])
    last_played = Date.parse(game['last_played'])

    GameConverter.new(id: game['id'], multiplayer: game['multiplayer'], last_played: last_played, genre: genre,
                      author: author, source: game['source'], label: label, publish_date: game['publish_date'])
  end

  Game.all = games
end
# rubocop:enable Metrics/AbcSize
