class Event < ActiveRecord::Base
  #relations
  has_and_belongs_to_many :users

  #allow `type` to be a column name
  self.inheritance_column = nil
end
