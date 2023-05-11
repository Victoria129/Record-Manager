require 'date'

# Represents an item in a collection.
class Item
  attr_accessor :genre, :author, :source, :label, :publish_date
  attr_reader :archived

  def initialize(attributes)
    @id = Random.rand(1...1000)
    @genre = attributes[:genre]
    @author = attributes[:author]
    @source = attributes[:source]
    @label = attributes[:label]
    @publish_date = Date.parse(attributes[:publish_date])
    @archived = attributes[:archived] || false
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
