class Location < ActiveRecord::Base
  validates :name, :description presence: true
end
