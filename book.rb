require './item'

# Book class for book object creation.
class Book < Item
  attr_accessor :publisher, :cover_state

  @books = []
  def initialize(publisher:, cover_state:, **attributes)
    super(attributes)
    @publisher = publisher
    @cover_state = cover_state
    self.class.all << self
  end

  def can_be_archived?
    super || @cover_state == 'Bad'
  end

  def self.all
    @books
  end

  def self.all=(books)
    @books = books
  end
end
