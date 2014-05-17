== Shopping Cart (May 17, 2014)

This app is a basic shopping cart that I built following along with the book Agile Web Development with Rails 4.
http://pragprog.com/book/rails4/agile-web-development-with-rails-4

I completed all the steps through chapter 12 and the app worked beautifully yesterday, but somehow I broke it this morning. I deleted the database, combined the migration files and changed the seed.rb file to use movies instead of books. Now when you have an empty shopping cart and click the "Add to Cart" button, the item is added, but the quantity is not changed in the database. If you reload the page, you will receive an error because the item in the cart has a zero quantity that is being multiplied by a price. I can manually change the quantity in the database and then each additional time clicking the "Add to Cart" button, the quantity will be incremented as it should. The issue is with the initial adding of a product.

On Monday we are starting Angular and so I'm not sure if I will have time to return to this app, but if I do find the time, I want to install the gems devise and cancan.

== NOTE: if you install this add, make sure you seed the database.
         rake db:create db:migrate db:seed