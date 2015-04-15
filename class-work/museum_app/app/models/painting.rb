class Painting < ActiveRecord::Base
	belongs_to :artist
	has_one :museum
end
