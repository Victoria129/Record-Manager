require './music_album'
require './genre'
require './label'
require './author'

RSpec.describe MusicAlbum do
  before(:each) do
    label1 = Label.new('Classic', 'grey') 
    label2 = Label.new('Hot', 'red') 
    genre = Genre.new(name: 'Country') 
    genre2 = Genre.new(name: 'Vintage')
    author = Author.new('Mike', 'Smith') 
    author2 = Author.new('Jim', 'Ike') 


    @album1 = MusicAlbum.new(on_spotify: true, genre: genre, author: author, source: 'Bookstore',
                      label: label1, publish_date: '1982-03-11')
    @album2 = MusicAlbum.new(
      on_spotify: false, genre: genre2, author: author2,
      source: 'Radio', label: label2, publish_date: '1999-05-12'
    )

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
