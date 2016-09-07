# Review belongs to a customer
# Review belongs to a restaurant
# Review knows about the restaurant that it belongs to

class Review
  attr_accessor :title, :customer, :restaurant

  def initialize(title, restaurant)
    @title = title
    @restaurant = restaurant
    restaurant.add_review(self) # From Restaurant.add_review
  end
end
