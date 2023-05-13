require './book'
require './label'
require './genre'
require './author'

RSpec.describe Book do
  before(:each) do
    genre = Genre.new(name: 'Vintage') 
    author = Author.new('Mike', 'Smith') 
    label = Label.new('Classic', 'Red') 
    genre2 = Genre.new(name: 'Vintage')
    author2 = Author.new('John', 'Doe')
    label2 = Label.new('Bestseller', 'Yellow')
                      
    @book1 = Book.new(publisher: 'Amazon', cover_state: 'Good', genre: genre, author: author,
    source: 'Bookstore', label: label, publish_date: '1982-03-11')

    @book2 = Book.new(
  publisher: 'Amazon', cover_state: 'Good', genre: genre2, author: author2,
  source: 'Bookstore', label: label2, publish_date: '1982-03-11'
)

                      
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
