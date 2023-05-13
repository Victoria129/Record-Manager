def list_all_books
  books = Book.all
  if books.empty?
    puts 'There are no Books added'
  else
    puts 'These are all the Books'
    books.each_with_index do |book, index|
      puts "#{index + 1}. Book ID:#{book.id} by #{book.author.first_name} #{book.author.last_name},
      published by #{book.publisher}"
    end
  end
end

def list_all_albums
  albums = MusicAlbum.all
  if albums.empty?
    puts 'There are no Music Albums added'
  else
    puts 'These are all the Music Albums'
    albums.each_with_index do |album, index|
      puts "#{index + 1}. Album ID:#{album.id} by #{album.author.first_name} #{album.author.last_name},
      On Spotify? #{album.on_spotify}"
    end
  end
end

def list_all_games
  games = Game.all
  if games.empty?
    puts 'There are no Games added'
  else
    puts 'These are all the Games'
    games.each_with_index do |game, index|
      puts "#{index + 1}. Game ID:#{game.id} by #{game.author.first_name} #{game.author.last_name},
      Last Played :#{game.last_played}"
    end
  end
end

def list_all_genres
  genres = Genre.all
  if genres.empty?
    puts 'There are no Genres'
  else
    puts 'These are all the genres'
    genres.each_with_index do |genre, index|
      puts "#{index + 1}. #{genre.name}, ID:#{genre.id}"
    end
  end
end

def list_all_labels
  labels = Label.all
  if labels.empty?
    puts 'There are no Labels'
  else
    puts 'These are all the Labels'
    labels.each_with_index do |label, index|
      puts "#{index + 1}. Label: #{label.title}, Colour:#{label.colour}, ID:#{label.id}"
    end
  end
end

def list_all_authors
  authors = Author.all
  if authors.empty?
    puts 'There are no Authors'
  else
    puts 'These are all the Authors'
    authors.each_with_index do |author, index|
      puts "#{index + 1}. #{author.first_name} #{author.last_name}, ID:#{author.id}"
    end
  end
end
