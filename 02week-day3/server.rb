require 'sinatra'
require 'faker'

# Home page 
get '/' do

  @sidebar_text = Faker::Lorem.paragraph(3)

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

  @sidebar_text = Faker::Lorem.paragraph(3)

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

# Product page (products.erb)
get '/products' do

  @sidebar_text = Faker::Lorem.paragraph(3)

  @product = []
  10.times do
    @product.push(
    { 
      product_name:   Faker::Commerce.product_name
    })
  end
  erb :products, layout: :index
end