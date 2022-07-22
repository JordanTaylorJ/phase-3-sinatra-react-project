class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # All Trails
  get "/trails" do
    trails = Trail.all.order(:name)
    trails.to_json
  end

  # All Athletes
  get '/athletes' do 
    athletes = Athlete.all.order(:time)
    athletes.to_json
  end

  #Athletes belonging to a specific trail
  get '/trails/:id' do 
    trails = trails.find(params[:id])
    trails.to_json(include: :athletes)
  end


  #Athletes by id
  get "/athletes/:id" do 
    athlete = Athlete.find(params[:id])
    athlete.to_json
  end

  ## Add new Athlete 
  post '/athletes' do 
    athlete = Athlete.create(
      name: params[:name],
      time: params[:time]
    )
    athlete.to_json
  end

  ## Update Athlete Info
  patch '/atheltes/:id' do 
    athlete = Athlete.find(params[:id])
    athlete.update(
      time: params[:time]
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
