class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :descr
      t.text :tip
      t.string :image

      t.timestamps
    end
  end
end
