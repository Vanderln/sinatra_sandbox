get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @sample = params[:text_input]
  erb :get_cool_url #, :locals => {:sample => @sample}
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @sample = params[:text_input2]
  erb :post_cool_url
end

post '/text_box' do
  # p params[:post].values
  # p params[:post][:price]
  p params[:post][:keep_talking]
  # p params[]
  # erb :text_box
end

post '/check_box' do
  p params.inspect
  # p params[:post]
end

post '/radio' do
  p params.inspect
  # p params[:post]
end

post '/select' do
  p params.inspect
end

post '/users/:annamarie' do
p params.inspect
end

post '/cool_url/:bill' do
p "Made it here"
end
