# Review initializes with a title, a customer and a restaurant
# Review belongs to a customer
# Review belongs to a restaurant
# Review knows about the restaurant that it belongs to

class Review
  attr_accessor :title, :customer, :restaurant
  @@all = []

  def initialize(title, restaurant, customer)
    @title = title
    @restaurant = restaurant
    @customer = customer
    restaurant.add_review(self) # From Restaurant.add_review
    customer.add_review(self) # From Customer.add_review
    @@all << self
  end

  def self.all=(all)
    @@all = all
  end

  def self.all
    @@all    
  end
end
