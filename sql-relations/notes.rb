# Consider how a yelp site is organized
# We need customers, restaurants, owners, and reviews.  How do they link up?

# As a first step
# Please write out the domain model on this file
# What we are concerned about is which tables have foreign keys
# Don't stress: There may be multiple correct answers based on your conception of the problem.

# Eg. for our books and authors your deliverable would look like

# restaurant belongs to owner
# restaurant has many reviews
# restaurant has many customers
# assuming restaurant only has one owner
id | name | owner_id

# review belongs to customer
# review belongs to restaurant
id | title | customer_id | restaurant_id

# customer has many reviews
id | name |

# owner has many restaurants
# owner has many reviews through restaurants
id | name |

# Hints:
# - The data always lives on the belongs to relationship
# - Do the belongs_to first
# - Then do the has_many
# - If there is a many to many, we need a third table
