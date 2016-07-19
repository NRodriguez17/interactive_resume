require './config/environment'
require './app/models/basic_info'
require './app/models/education'
require './app/models/extracurriculars'
require './app/models/volunteerworkexperience'
require './app/models/awardskill'

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
  @extracurriculars = Extracurriculars.new(params[:extracurricular1], params[:dates1], params[:description1], params[:description2], params[:extracurricular2], params[:dates2], params[:description3], params[:description4], params[:extracurricular3], params[:dates3], params[:description5], params[:description6])
  @volunteerworkexperience = Volunteerworkexperience.new(params[:experience1], params[:dates11], params[:description11], params[:description21], params[:experience2], params[:dates21], params[:description31], params[:description41], params[:experience3], params[:dates31], params[:description51], params[:description61])
  @awardskill = Awardskill.new(params[:awardskill1], params[:awardskill2], params[:awardskill3], params[:awardskill4], params[:awardskill5])
 
  erb :final
end

end
