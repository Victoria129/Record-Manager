require './game'
require './label'
require './genre'
require './author'

RSpec.describe Game do
  it 'should create an object of a Game class' do
    genre = Genre.new(name: 'Adventure')
    author = Author.new('Ubi', 'Soft')
    label = Label.new('Classic', 'Red')
  
    game = Game.new(
    multiplayer: true, last_played: '2020-11-05', genre: genre, author: author,
    source: 'Library', label: label, publish_date: '2020-01-28')
  

    expect(game.last_played.to_s).to eq('2020-11-05')
    expect(game.multiplayer).to eq(true)
  end

  it 'should check if game can be archived' do
    genre = Genre.new(name: 'Adventure')
    author = Author.new('Ubi', 'Soft')
    label = Label.new('Classic', 'Red')
    genre2 = Genre.new(name: 'Racing')
    author2 = Author.new('EA', 'Sports')
    label2 = Label.new('Bestseller', 'Yellow')
  
    game1 = Game.new(
    multiplayer: true, last_played: '2019-11-05', genre: genre, author: author,
    source: 'Library', label: label, publish_date: '2005-01-28')
  
    game2 = Game.new(
    multiplayer: false, last_played: '2017-06-15', genre: genre2, author: author2,
    source: 'Game Store', label: label2, publish_date: '2022-10-10')
  
  
    expect(game1.can_be_archived?).to eq(true)
    expect(game2.can_be_archived?).to eq(false)
  end
end
