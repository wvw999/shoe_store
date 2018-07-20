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

post('/stores/:id/brand') do
  @store = Store.find(params[:id].to_i)
  @brand_id = params["brands_drop"]
  @brand = Brand.find(@brand_id)
  @add_brand = @brand.stores.find_or_create_by(:id => @store.id)
  @all_brands = Brand.all
  # @brands_list = @store.brands.find_by(:id => @store.id)
  erb(:edit)
end

post('/stores/:id/brand/new') do
  @store = Store.find(params[:id].to_i)
  @brand_name = params["new_brand"]
  @brand_price = params["new_price"]
  @associate_brand = @store.brands.find_or_create_by(:name => @brand_name)
  @associate_brand.update(price: @brand_price)
  @all_brands = Brand.all
  # @brands_list = @store.brands.find_by(:id => @store.id)
  erb(:edit)
end

# get('/stores/:id/display') do
#@store = Store.find(params[:id].to_i)
# end
#
# destroy('/stores/:id/remove') do
#@store = Store.find(params[:id].to_i)
# end
