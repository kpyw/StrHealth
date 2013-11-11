class Workout < ActiveRecord::Base
  validates_presence_of :wo_name
end
