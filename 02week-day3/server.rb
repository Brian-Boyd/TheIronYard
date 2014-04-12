require 'sinatra'
require 'faker'

# Home page 
get '/' do
  @para = []
  6.times do
    @para.push(
    {
      para: Faker::Lorem.paragraphs(4)
    })
  end
  erb :home, layout: :index
end

# About page (about.erb)
get '/about' do

  @team = []
  10.times do
    @team.push(
    { 
      name:   Faker::Name.name, 
      city:   Faker::Address.city, 
      state:  Faker::Address.state
    })
  end
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

get '/sidebar_partial1'  do
  @para = Faker::Lorem.sentences(3)
  erb :sidebar, layout: :index
end