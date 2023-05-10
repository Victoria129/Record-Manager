# frozen_string_literal: true

require './item'

class Book < Item
  attr_accessor :publisher, :cover_state

  @books = []
  def initialize(publisher: , cover_state: , **attributes)
    super(attributes)
    @publisher = publisher
    @cover_state = cover_state
    self.class.all << self
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10 || @cover_state == 'Bad' ? true : false
  end

  def self.all
    @books
  end
end
