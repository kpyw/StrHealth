class AddExerciesToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :exercise_id, :integer
    add_column :workouts, :wo_name, :string
  end
end
