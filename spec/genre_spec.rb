require './genre'
require './item'
require './label'

RSpec.describe Genre do
  it 'tests the Genre class instance' do
    genre = Genre.new('Country')

    expect(Genre.all.empty?).to eq(false)
    expect(genre.name).to eq('Country')
  end

  it 'should add item to the items array using add_items method' do
    label1 = Label.new('Classic', 'grey') # Fix: Create an instance of Label
    genre1 = Genre.new('Country')
    genre2 = Genre.new('Gospel')

    album1 = Item.new(on_spotify: true, genre: genre1, author: 'Agatha Christie',
    source: 'Bookstore', label: label1, publish_date: '1982-03-11') # Fix: Create an instance of Item (assuming Album is a subclass of Item)

    genre2.add_items(album1)

    expect(album1.genre).to eq(genre2)
    expect(Genre.all.empty?).to eq(false)
  end
end
