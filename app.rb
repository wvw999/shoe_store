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
  @brands_list = Brand.all
  @new_store = Store.create({:title => @store_name})
  redirect '/'
end

# get('/stores/:id/edit') do
#
# end

# get('/stores/:id/display') do
#
# end
#
# destroy('/stores/:id/remove') do
#
# end
