require './config/environment'
require './app/models/basic_info'
require './app/models/education'
require './app/models/extracurriculars'

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
  @education = Education.new(params[:school], params[:graduationyear], params[:gpa])
  @extracurriculars = Extracurriculars.new(params[:extracurricular1], params[:description1], params[:extracurricular2], params[:description2], params[:extracurricular3], params[:description3])
  # @volunteerexperience
  # @workexperience
  # @awards
  # @skills
 
  erb :final
end

end
