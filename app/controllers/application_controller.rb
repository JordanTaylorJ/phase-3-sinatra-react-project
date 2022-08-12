require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # All Trails
  get "/trails" do
    trails = Trail.all.order(:name)
    trails.to_json(include: :athletes)
  end

  ## Add new Athlete 
  post '/athletes' do 
    trail = Trail.find_by(id: params[:trail_id])
    athlete = trail.athletes.create(
      name: params[:name],
      time: params[:time],
      unsupported: params[:unsupported]
    )
    athlete.to_json
  end

  ## Update Athlete Info
  patch '/athletes/:id' do 
    athlete = Athlete.find(params[:id])
    athlete.update(
      name: params[:name],
      time: params[:time],
      unsupported: params[:unsupported]
    )
    athlete.to_json
  end

  ## Delete an Athlete 
  delete '/athletes/:id' do 
    athlete = Athlete.find(params[:id])
    athlete.destroy
    athlete.to_json
  end 


end
