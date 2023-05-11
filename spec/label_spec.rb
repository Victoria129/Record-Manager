require './label'
require './item'

RSpec.describe Label do
  it 'tests the Label class instance' do
    label1 = Label.new('Classic', 'grey')

    expect(Label.all.empty?).to eq(false)
    expect(label1.colour).to eq('grey')
  end

  it 'should add item to the items array using add_items method' do
    label1 = Label.new('Classic', 'grey')
    label2 = Label.new('Bestseller', 'red')

    book1 = Book.new(publisher: 'Amazon', cover_state: 'Good', genre: 'Vintage', author: 'Agatha Christie',
                     source: 'Bookstore', label: label1, publish_date: '1982-03-11')

    label2.add_items(book1)

    expect(book1.label).to eq(label2)
    expect(Label.all.empty?).to eq(false)
  end

  it 'should list all labels' do
    label1 = Label.new('Classic', 'grey')
    Label.new('Bestseller', 'red')

    expect(Label.all.empty?).to eq(false)
    expect(Label.all).to include(label1)
  end
end
