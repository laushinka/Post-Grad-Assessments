class Review() {
  constructor(title, customer, restaurant) {
    this.title = title;
    this.customer = customer;
    this.restaurant = restaurant;
    store.reviews.push(this)
  }

  all() {
    return Store.reviews
  }
}
