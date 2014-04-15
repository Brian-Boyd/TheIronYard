require 'sinatra'
require 'data_mapper'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blog'
)

# Model
class Post
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :content, Text
end

DataMapper.finalize.auto_upgrade!

# Home page 
get '/' do
  @posts = Post.all(:order => [ :id.desc ], :limit => 5)
  # How to 
  erb :content, layout: :index
end

get '/create_post' do
  erb :create_post, layout: :index
end

post '/create_post' do
  @post = Post.create params[:post]
  redirect to('/')
end

# About page (about.erb)
get '/about' do
  erb :about, layout: :index
end

# Post page (post.erb)
get '/post/:id' do
  erb :post, layout: :index
end

# Post page (post.erb)
get '/full_post/:id' do
  @post = Post.get params[:id]
  erb :full_post, layout: :index
end

# Edit post (edit.erb)
get '/edit/:id' do
  @post = Post.get params[:id]
  erb :edit, layout: :index
end

put '/edit/:id' do
  @post = Post.get params[:id]
  @post.update params[:post]
  redirect to('/')
end

# Delete Post
delete '/delete/:id' do
  puts params
  @post = Post.get params[:id]
  @post.destroy
  redirect to('/')
end