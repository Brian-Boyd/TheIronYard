require 'sinatra'
require 'faker'

# Home page 
get '/' do
  @root = "This is the home page!"
  erb :home, layout: :index
end

# About page (about.erb)
get '/about' do
  @team = [
    {first_name: "Joe", last_name: "President"},
    {first_name: "Nancy", last_name: "Developer"},
    {first_name: "Lucy", last_name: "Loafer"}
  ]
  erb :about, layout: :index
end

# Services page (services.erb)
get '/services' do
  @sku = [
    {product_name: "Bubble Gum", Sku: "436-729"},
    {product_name: "Rocket Launcher", Sku: "943-678"},
    {product_name: "Football", Sku: "763-976"}
  ]
  erb :services, layout: :index
end





# Navigation, but do not want this as a page
# get '/nav' do
#   @nav = [
#     {title: "Home", link: "/"},
#     {title: "About", link: "/about"},
#     {title: "Product", link: "/product"}
#   ]
#   erb :nav, layout: :index
# end

# <% @nav.each do |link| %>
# <a href="<%= link[:link] %>"><%= link[:title] %></a>
# <% end %>