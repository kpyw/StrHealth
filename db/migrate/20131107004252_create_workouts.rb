class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :wo_name
      t.integer :exercise_id
    end
  end
end
