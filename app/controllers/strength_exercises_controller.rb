class StrengthExercisesController < ApplicationController
  def index
    current_users_strength_exercises()
  end

  def create
    current_user_id = session[:user_id]
    @strength_exercise = StrengthExercise.new(name: params[:name], sets: params[:sets], reps: params[:reps], weight: params[:weight], user_id: current_user_id)
    if @strength_exercise.save
      current_users_strength_exercises()
      redirect_back_or_to('/strength_exercises', allow_other_host: false)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def current_users_strength_exercises
      current_user_id = session[:user_id]
      user = User.find(current_user_id)
      @strength_exercises = user.strength_exercises
    end
end
