require 'sinatra'
require 'faker'

# Home page 
get '/' do
  erb :content, layout: :index
end

# About page (about.erb)
get '/about' do
  erb :about, layout: :index
end

# Post page (post.erb)
get '/post' do
  erb :post, layout: :index
end

# Edit post (edit.erb)
get '/edit' do
  erb :edit, layout: :index
end

# Delete Post (delete.erb)
get '/delete' do
  erb :delete, layout: :index
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