class Event < ActiveRecord::Base
  #relations
  has_and_belongs_to_many :users
end
