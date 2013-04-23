require 'sinatra'

set :public_folder, 'public'

get '/' do
  redirect '/index.html'
end

post '/status' do
  #XMLHttpRequest cannot load http://lvh.me:4567/status. Origin http://localhost:4567 is not allowed by Access-Control-Allow-Origin.
  headers['Access-Control-Allow-Origin'] = '*'
  headers['Access-Control-Request-Method'] = '*'
  '{"status" : "ok"}'
end

get '/status' do
  headers['Access-Control-Allow-Origin'] = '*'
  headers['Access-Control-Request-Method'] = '*'
  '{"status" : "ok"}'
end
