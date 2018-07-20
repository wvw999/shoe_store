require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('sinatra/activerecord')
require('./lib/store')
require('./lib/brand')
require("pg")
require("pry")

get('/') do
  @stores_list = Store.all
  erb(:index)
end

post('/store') do
  @store_name = params["title"]
  @new_store = Store.create({:title => @store_name})
  @store = Store.find_by(title: @store_name)
  redirect '/'
end

get('/stores/:id/edit') do
  @store = Store.find(params[:id].to_i)
  @all_brands = Brand.all
  erb(:edit)
end

post('/stores/:id/title') do
  @store = Store.find(params[:id].to_i)
  @updated_title = params["updated_title"]
  @store.update(:title => @updated_title)
  @all_brands = Brand.all
  erb(:edit)
end

post('/stores/:id/brand') do
  @store = Store.find(params[:id].to_i)
  @brand_name = params["brands_drop"]
  @brand = Brand.find_by(name: @brand_name)
  @store.brands << Brand.find_or_create_by(:name => @brand_name)
  @all_brands = Brand.all
  erb(:edit)
end

post('/stores/:id/brand/new') do
  @store = Store.find(params[:id].to_i)
  @brand_name = params["new_brand"]
  @brand_price = params["new_price"]
  @add_brand = @store.brands.find_or_create_by(:name => @brand_name, :price => @brand_price)
  @all_brands = Brand.all
  erb(:edit)
end

post('/stores/:id/remove') do
  @store = Store.find(params[:id].to_i)
  Store.destroy(@store.id)
  redirect '/'
end
