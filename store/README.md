== Shopping Cart - Version 1 (May 17, 2014)

This app is a basic shopping cart that I built following along with the book Agile Web Development with Rails 4.
http://pragprog.com/book/rails4/agile-web-development-with-rails-4

Version 1 is all the steps through chapter 12 and the app works beautifully.

== NOTE: if you install this app, make sure you seed the database.
         rake db:create db:migrate db:seed

== To Do List for Version 2:

1) Add the ability to delete individual line items from the cart. This will require buttons on each line, and such buttons will need to be linked to the ​destroy​ action in the ​LineItemsController​.

2) The cart is currently hidden when the user empties it by redrawing the entire catalog. Change the application to use the jQuery UI ​blind​ effect instead.

3) Add a button next to each item in the cart. When clicked, it should invoke an action to decrement the quantity of the item, deleting it from the cart when the quantity reaches zero. Get it working without using Ajax first and then add the Ajax goodness.

4) What happens if you click the ​Checkout​ button in the sidebar while the checkout screen is already displayed? Find a way to disable the button in this circumstance.

5) The list of possible payment types is currently stored as a constant in the ​Order​ class. Move this list into a database table and still make validation work for the field.

6) Add devise for login authentication.

7) Add cancan for limiting access per user role. Either admin or normal user.

8) Integrate the use of sending emails for confirmation of order.
