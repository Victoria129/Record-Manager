require './genre'
require './item'
require './label'
require './author'
require './music_album'

RSpec.describe Genre do
  it 'tests the Genre class instance' do
    genre = Genre.new('Country')

    expect(Genre.all.empty?).to eq(false)
    expect(genre.name).to eq('Country')
  end

  it 'should add item to the items array using add_items method' do
    label1 = Label.new('Classic', 'grey')
    genre = Genre.new(name: 'Country')
    genre2 = Genre.new(name: 'Vintage')
    author = Author.new('Mike', 'Smith')

    album1 = MusicAlbum.new(on_spotify: true, genre: genre, author: author, source: 'Bookstore',
                            label: label1, publish_date: '1982-03-11')

    genre2.add_items(album1)

    expect(album1.genre).to eq(genre2)
    expect(Genre.all.empty?).to eq(false)
  end
end
