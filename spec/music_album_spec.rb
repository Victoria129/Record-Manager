require './music_album'
require './genre'

RSpec.describe MusicAlbum do
  before(:each) do
    @album1 = MusicAlbum.new(on_spotify: true, genre: 'Vintage', author: 'Agatha Christie',
                             source: 'albumstore', label: 'Classic', publish_date: '1982-03-11')
    @album2 = MusicAlbum.new(on_spotify: true, genre: 'Country', author: 'Jane Austen',
                             source: 'Library', label: 'My country', publish_date: '2000-01-28')
  end

  it 'should create an instance of the MusicAlbum class' do
    expect(MusicAlbum.all.empty?).to eq(false)
    expect(@album1.on_spotify).to eq(true)
  end

  it 'lists all music albums' do
    expect(MusicAlbum.all.length).to eq(4)
  end

  it 'checks if album can be archived' do
    expect(@album1.archived).to eq(false)
    expect(@album2.archived).to eq(false)
  end

  it 'lists all albums' do
    # checks that albums are created before each test
    expect(MusicAlbum.all.length).to eq(8)
  end
end
