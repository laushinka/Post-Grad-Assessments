# Restaurant has many customers
# Restaurant has many reviews through customers

class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def add_review(review)
    @reviews << review
  end

  def customers
    @reviews.collect do |review|
      review.customer
    end
  end

end
