class CreateUsersStrengthExercisesJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_join_table :users, :strength_exercises do |t|
      # t.index [:user_id, :strength_exercise_id]
      # t.index [:strength_exercise_id, :user_id]
    end
  end
end
