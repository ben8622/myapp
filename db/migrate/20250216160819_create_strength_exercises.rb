class CreateStrengthExercises < ActiveRecord::Migration[8.0]
  def change
    create_table :strength_exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :weight

      t.timestamps
    end
  end
end
