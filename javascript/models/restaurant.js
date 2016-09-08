class Restaurant {
  constructor(name) {
    this.name = name;
    this.reviews = [];
    Store.restaurants.push(this);
  }

  all() {
    return Store.restaurants;
  }

  findRestaurant(name) {
    return Store.restaurants.find(restaurant => { return restaurant.name === name; })
  }

  reviews() {

  }

  customers() {

  }

}
