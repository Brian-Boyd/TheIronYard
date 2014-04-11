require 'sinatra'
require 'faker'

@person_name            = Faker::Name.name
@person_email           = Faker::Internet.email
@person_company         = Faker::Company.name
@person_company_slogan  = Faker::Company.bs
@person_phone           = Faker::PhoneNumber.phone_number
@person_address         = Faker::Address.street_address
@person_city            = Faker::Address.city
@person_state           = Faker::Address.state_abbr
@person_zip             = Faker::Address.zip_code



def paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 3)
  sentences(resolve(sentence_count) + rand(random_sentences_to_add.to_i).to_i, supplemental).join(' ')
end

# Home page 
get '/' do
  @root = "This is the home page!"
  erb :home, layout: :index
end

# About page (about.erb)
get '/about' do
  @team = [
    {name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state},
    {name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state},
    {name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state},
    {name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state},
    {name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state},
    {name: Faker::Name.name, city: Faker::Address.city, state: Faker::Address.state}
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