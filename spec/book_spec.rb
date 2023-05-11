require './book'
require './label'

RSpec.describe Book do
  before(:each) do
    @book1 = Book.new(publisher: 'Amazon', cover_state: 'Good', genre: 'Vintage', author: 'Agatha Christie',
                      source: 'Bookstore', label: 'Classic', publish_date: '1982-03-11')
    @book2 = Book.new(publisher: 'Penguin', cover_state: 'Bad', genre: 'Fiction', author: 'Jane Austen',
                      source: 'Library', label: 'Bestseller', publish_date: '2000-01-28')
  end

  it 'lists all labels' do
    Label.new('Classic', 'grey')
    Label.new('Bestseller', 'red')

    expect(Book.all.length).to eq(2)
    expect(Label.all.length).not_to eq(0)
  end

  it 'checks if book can be archived' do
    expect(@book1.archived).to eq(false)
    expect(@book2.archived).to eq(false)
  end

  it 'lists all books' do
    # checks that books are created before each test
    expect(Book.all.length).to eq(6)
  end
end
