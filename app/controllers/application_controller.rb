class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/trails" do
    trails = Trail.all.order(:name)
    trails.to_json
  end

end
