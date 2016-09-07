# Customer initializes with a name
# Customer has many reviews
# Customer has many restaurants through reviews

class Customer
  attr_accessor :name, :reviews
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def add_review(review)
    @reviews << review
    review.customer = self
  end

  def self.all=(all)
    @@all = all
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |customer|
      customer.name == name
    end
  end
end

# customer = customer.add_review('it was good', Restaurant.new)
# a new review tied ot the restaurant
# and tied to the customer
