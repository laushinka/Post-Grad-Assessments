luna = Customer.new("Luna")
jeff = Customer.new("Jeff")
tom = Customer.new("Tom")

chipotle = Restaurant.new("Chipotle")
burger_king = Restaurant.new("Burger King")
halal_guys = Restaurant.new("Halal Guys")

review1 = Review.new("Awful", chipotle, luna)
review2 = Review.new("Great", burger_king, jeff)
review3 = Review.new("Amazing", halal_guys, jeff)
