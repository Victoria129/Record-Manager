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
end
