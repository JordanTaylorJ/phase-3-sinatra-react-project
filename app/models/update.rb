class Update < ActiveRecord::Base
    belongs_to :trail 
    belongs_to :hiker
end