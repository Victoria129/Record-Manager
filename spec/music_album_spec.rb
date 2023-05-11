require './music_album'
require './genre'

RSpec.describe MusicAlbum do
  before(:each) do
    @album1 = MusicAlbum.new(on_spotify: true, genre: 'Vintage', author: 'Agatha Christie',
                      source: 'albumstore', label: 'Classic', publish_date: '1982-03-11')
    @album2 = MusicAlbum.new(on_spotify: true, genre: 'Country', author: 'Jane Austen',
                      source: 'Library', label: 'My country', publish_date: '2000-01-28')
  end

  it 'lists all genres' do
    Genre.new('Classic', 'grey')
    Genre.new('Bestseller', 'red')

    expect(MusicAlbum.all.length).to eq(2)
    expect(Genre.all.length).not_to eq(0)
  end

  it 'checks if album can be archived' do
    expect(@album1.archived).to eq(false)
    expect(@album2.archived).to eq(false)
  end

  it 'lists all albums' do
    # checks that albums are created before each test
    expect(MusicAlbum.all.length).to eq(6)
  end
end
