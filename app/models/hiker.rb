class Hiker < ActiveRecord::Base
    has_many :updates
    has_many :hikers, through: :updates
end