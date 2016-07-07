require './config/environment'
require './app/models/basic_info'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :index
  end

  get '/create' do
    erb :create
  end

  post '/final' do
  @basicinfo = BasicInfo.new(params[:firstname], params[:lastname], params[:image], params[:phonenumber], params[:email])
  @school = (params[:school])
  @graduationyear = (params[:graduationyear])
  @gpa = (params[:gpa])
  erb :final
end

end
