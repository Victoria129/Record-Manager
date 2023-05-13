require './game'
require './label'

RSpec.describe Game do
  it 'should create an object of a Game class' do
    label1 = Label.new('Classic', 'grey')
    game = Game.new(multiplayer: true, last_played: '2020-11-05', genre: 'Adventure', author: 'Ubi-Soft',
                    source: 'Library', label: label1, publish_date: '2020-01-28')

    expect(game.last_played.to_s).to eq('2020-11-05')
    expect(game.multiplayer).to eq(true)
  end

  it 'should check if game can be archived' do
    label = Label.new('Action', 'yellow')
    game1 = Game.new(multiplayer: true, last_played: '2018-05-10', genre: 'RPG', author: 'Bethesda', source: 'Disc',
                     label: label, publish_date: '2007-10-28')
    game2 = Game.new(multiplayer: false, last_played: '2022-03-20', genre: 'Strategy', author: 'Firaxis',
                     source: 'Digital', label: label, publish_date: '2021-02-15')

    expect(game1.can_be_archived?).to eq(true)
    expect(game2.can_be_archived?).to eq(false)
  end
end
