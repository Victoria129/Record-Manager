require './author'
require './book'
require './label'
require './genre'

RSpec.describe Author do
  it 'tests the Author class instance' do
    author = Author.new('Mike', 'Jones')

    expect(Author.all.empty?).to eq(false)
    expect(author.last_name).to eq('Jones')
  end

  it 'should add item using the add_item method' do
    genre = Genre.new(name: 'Vintage')
    label = Label.new('Classic', 'Red')
    author = Author.new('Mike', 'Smith')
    author2 = Author.new('John', 'Doe')

    book = Book.new(publisher: 'Amazon', cover_state: 'Good', genre: genre, author: author,
                    source: 'Bookstore', label: label, publish_date: '1982-03-11')

    author2.add_items(book)

    expect(book.author).to eq(author2)
    expect(Author.all.empty?).to eq(false)
  end
end
