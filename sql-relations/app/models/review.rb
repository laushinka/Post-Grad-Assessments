class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id

  def customer
    sql = <<-SQL
      SELECT customers.* FROM reviews
      JOIN customers
      WHERE reviews.id = ?
    SQL
    self.class.db.execute(sql, self.id)
  end

  def restaurant
    
  end

end
