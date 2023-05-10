require 'date'

class Item
    attr_accessor :genre, :author, :source, :label, :publish_date 
  def initialize(genre, author, source, label, publish_date, archived: false)
    @id = Random.rand(1...1000)
    @genre = genre
    @author = author
    @source = source
    @label = label
    @publish_date = Date.parse(publish_date)
    @archived = archived
  end

  def can_be_archived?
    Date.today.year - @publish_date.year > 10 ? true : false
  end

  def move_to_archive
    can_be_archived? ? @archived = true : @archived = false
  end
end
