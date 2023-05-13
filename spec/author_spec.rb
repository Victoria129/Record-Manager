require './author'
require './book'
require './label'

RSpec.describe Author do
  it 'tests the Author class instance' do
    author = Author.new('Mike', 'Jones')

    expect(Author.all.empty?).to eq(false)
    expect(author.last_name).to eq('Jones')
  end

  it 'should add item using the add_item method' do
    author1 = Author.new('Mike', 'Jones')
    author2 = Author.new('Dave', 'Smith')
    label = Label.new('Classic', 'grey')
    book = Book.new(publisher: 'Amazon', cover_state: 'Good', genre: 'Vintage', author: author1,
                    source: 'Bookstore', label: label, publish_date: '1982-03-11')

    author2.add_items(book)

    expect(book.author).to eq(author2)
    expect(Author.all.empty?).to eq(false)
  end
end
