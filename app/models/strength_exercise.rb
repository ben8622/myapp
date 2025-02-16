class StrengthExercise < ApplicationRecord
  validates :name, presence: true
  validates :sets, presence: true
  validates :reps, presence: true
  validates :weight, presence: true
  belongs_to :user
end
