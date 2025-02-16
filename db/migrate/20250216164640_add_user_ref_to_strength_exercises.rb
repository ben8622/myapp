class AddUserRefToStrengthExercises < ActiveRecord::Migration[8.0]
  def change
    add_reference :strength_exercises, :user, null: false, foreign_key: true
  end
end
