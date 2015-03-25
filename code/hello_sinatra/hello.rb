require 'sinatra'
require 'json'

@@tasks = []

get '/' do
  "Hello #{params[:name] || 'World'}!"
end

get '/tasks' do
  erb :index, locals: { tasks: @@tasks }
end

get '/tasks/:id' do
  index = params[:id].to_i - 1
  @task = @@tasks[index]
  erb :show
end

post '/tasks' do
  @@tasks << params[:message]
  content_type :json
  { success: true, message: @@tasks.last }.to_json
end
