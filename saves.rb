require './book'

class Saves
  def book_saves
    books = Book.all
    File.write('books.json', JSON.dump(books.map { |book| {
      id: book.id,
      publisher: book.publisher,
      cover_state: book.cover_state,
      genre: {
        id: book.genre.id,
        name: book.genre.name
      },
      author: {
        id: book.author.id,
        first_name: book.author.first_name,
        last_name: book.author.last_name
      },
      source: book.source,
      label: {
        id: book.label.id,
        title: book.label.title,
        colour: book.label.colour
      },
      publish_date: book.publish_date.to_s
    } }))
  end

  def album_saves
    albums = MusicAlbum.all
    File.write('albums.json', JSON.dump(albums.map { |album| {
      id: album.id,
      on_spotify: album.on_spotify,
      genre: {
        id: album.genre.id,
        name: album.genre.name
      },
      author: {
        id: album.author.id,
        first_name: album.author.first_name,
        last_name: album.author.last_name
      },
      source: album.source,
      label: {
        id: album.label.id,
        title: album.label.title,
        colour: album.label.colour
      },
      publish_date: album.publish_date.to_s
    } }))
  end

  def game_saves
    games = Game.all
    File.write('games.json', JSON.dump(games.map { |game| {
      multiplayer: game.multiplayer,
      last_played: game.last_played.to_s,
      genre: {
        id: game.genre.id,
        name: game.genre.name
      },
      author: {
        id: game.author.id,
        first_name: game.author.first_name,
        last_name: game.author.last_name
      },
      source: game.source,
      label: {
        id: game.label.id,
        title: game.label.title,
        colour: game.label.colour
      },
      publish_date: game.publish_date.to_s
    } }))
  end
end
