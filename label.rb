# frozen_string_literal: true

require './item'

class Label
  attr_accessor :title, :colour

  @labels = []

  def initialize(title, colour)
    @id = Random.rand(1...1000)
    @title = title
    @colour = colour
    @items = []
    self.class.all << self
  end

  def add_items(item)
    @items << item
    item.label = self
  end

  def self.all
    @labels
  end
end
