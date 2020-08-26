# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Ruby on Rails by example.

## Features and bug fixes

### Feature: Sold Out Badge
- When a product has 0 quantity, a sold out badge is displayed on the product list page

### Feature: Admin Categories
- Admin users can list and create new categories
- Admins can add new products using the new category
- All admin controllers inherit from Admin::BaseController containing the authentication filter

### Feature: User Authentication
- Visitors can go to the registration page from any page in order to create an account
- Visitors can sign up for a user account with their e-mail, password, first name and last name
- Visitors can sign in using their credentials
- Users can log out from any page
- Users cannot sign up with an existing e-mail address (uniqueness validation)
- Passwords are not stored as plain text in the database

### Enhancement: Order Details Page
- The order page contains items, their image, name, description, quantities and line item totals
- The final amount for the order is displayed
- The email that was used to place the order is displayed
- Visitors can place an order (i.e. without logging in and therefore without an e-mail address)

### Bug fix: Missing Admin Security
- Admin users must enter login/password to access admin functionality
- Implemented through an abstract top-level class for admin controllers

### Bug fix: Checking Out with Empty Cart
- When the cart is empty and the user goes to the carts#show page, instead of displaying the contents and a stripe checkout button, a friendly message about how it is empty and a link to the products page is displayed


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Testing

* Rspec

## Screenshots

### Home page
!['Home'](https://github.com/jdhuot/jungle/blob/master/docs/home.png?raw=true)

### Sold out badge
!['Sold Out'](https://github.com/jdhuot/jungle/blob/master/docs/sold-out.png?raw=true)

### Admins can view and create product categories
!['Categories'](https://github.com/jdhuot/jungle/blob/master/docs/categories.png?raw=true)

### Empty cart notice
!['Empty cart notice'](https://github.com/jdhuot/jungle/blob/master/docs/empty-cart.png?raw=true)

### Signup page
!['Signup page'](https://github.com/jdhuot/jungle/blob/master/docs/signup.png?raw=true)

### Login page
!['Login page'](https://github.com/jdhuot/jungle/blob/master/docs/login.png?raw=true)

### Order details
!['Order details'](https://github.com/jdhuot/jungle/blob/master/docs/order-details.png?raw=true)

### Simple admin authentication 
!['auth'](https://github.com/jdhuot/jungle/blob/master/docs/auth.png?raw=true)
