class Workout < ActiveRecord::Base
  validate_presence_of :wo_name
end
