class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/trails" do
    trails = Trail.all.order(:name)
    trails.to_json
  end

  get "/hikers" do 
    hikers = Hiker.all.order(:time)
    hikers.to_json
  end

end
