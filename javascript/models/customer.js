class Customer {
  constructor(name) {
    this.name = name;
    this.reviews = [];
    Store.customers.push(this);
  }

  all() {
    return Store.customers;
  }

  assignReview(review) {
    let customerName = findCustomer(review.customer.name);
    if customerName === this.name {
      Store.customers.reviews.push(review)
    }
  }

  findCustomer(name) {
    return Store.customers.find(customer => { return customer.name === name; })
    // return Store.customers.filter(function(obj) {
    //   return obj.name === name;
    // })
  }
}
