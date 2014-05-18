== Shopping Cart (May 17, 2014)

This app is a basic shopping cart that I built following along with the book Agile Web Development with Rails 4.
http://pragprog.com/book/rails4/agile-web-development-with-rails-4

I completed all the steps through chapter 12 and the app worked beautifully yesterday, but somehow I broke it this morning. I deleted the database, combined the migration files and changed the seed.rb file to use movies instead of books. Now when you have an empty shopping cart and click the "Add to Cart" button, the item is added, but the quantity is not changed in the database. If you reload the page, you will receive an error because the item in the cart has a zero quantity that is being multiplied by a price. I can manually change the quantity in the database and then each additional time clicking the "Add to Cart" button, the quantity will be incremented as it should. The issue is with the initial adding of a product.

On Monday we are starting Angular and so I'm not sure if I will have time to return to this app, but if I do find the time, I want to install the gems devise and cancan.

== NOTE: if you install this add, make sure you seed the database.
         rake db:create db:migrate db:seed

== To DO:

1) Add the ability to delete individual line items from the cart. This will require buttons on each line, and such buttons will need to be linked to the ​destroy​ action in the ​LineItemsController​.

2) The cart is currently hidden when the user empties it by redrawing the entire catalog. Can you change the application to use the jQuery UI ​blind​ effect instead?

3) Add a button next to each item in the cart. When clicked, it should invoke an action to decrement the quantity of the item, deleting it from the cart when the quantity reaches zero. Get it working without using Ajax first and then add the Ajax goodness.

4) What happens if you click the ​Checkout​ button in the sidebar while the checkout screen is already displayed? Can you find a way to disable the button in this circumstance?

5) The list of possible payment types is currently stored as a constant in the ​Order​ class. Can you move this list into a database table? Can you still make validation work for the field?

6) Add devise for login authentication.

7) Add cancan for limiting access per user role. Either admin or normal user.

8) Integrate the use of sending emails for confirmation of order.

