require 'date'

# Represents an item in a collection.
class Item
  attr_accessor :genre, :author, :source, :label, :publish_date
  attr_reader :id, :archived

  def initialize(attributes)
    @id = Random.rand(1...1000)
    @genre = attributes[:genre]
    attributes[:genre].items << self unless attributes[:genre].items.include?(self)

    @author = attributes[:author]
    attributes[:author].items << self unless attributes[:author].items.include?(self)

    @source = attributes[:source]

    @label = attributes[:label]
    attributes[:label].items << self unless attributes[:label].items.include?(self)

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
