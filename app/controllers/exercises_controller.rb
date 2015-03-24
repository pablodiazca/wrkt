class ExercisesController < ApplicationController
  before_action :find_workout
  before_action :find_quotes
  
  def index
    @user = current_user
    @exercises = @workout.exercises.all

    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new exercise_params
    @exercise.workout_id = @workout.id

    if @exercise.save
      redirect_to workout_exercises_path(@workout)
    else
      redirect_to workout_exercises_path(@workout)
    end
  end

  def destroy
    @exercises = @workout.exercises.all

    @exercise = Exercise.find params[:id]

    respond_to do |format|
      if @exercise.destroy
        format.html { redirect_to workouts_path(@workouts)}
        format.js { }
      else
      end
    end

  end

  private

  def find_quotes
    q = Quote.all
    @quotes = q.random.first
  end

  def find_workout
    @workout = Workout.find params[:workout_id]
  end

  def exercise_params
    params.require(:exercise).permit(:name, :sets, :reps, :time, :distance)
  end
end
