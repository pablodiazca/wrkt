class WorkoutsController < ApplicationController

  before_action :authenticate_user!, only: [:index, :create, :edit, :update, :destroy]

  def index
    @user = User.find params[:user_id]
    @workouts = @user.workouts.all

    @workout = Workout.new   
  end

  def create

    @workout = Workout.new workout_params
    @user = current_user

    @workout.user_id = @user.id

    respond_to do |format|
      if @workout.save
        format.html { redirect_to user_workouts_path(@user) }
        format.js { render action: 'index'}
      else
        format.html { redirect_to user_workouts_path(@user) }
        format.js { }
      end
    end
    
  end

  private

  def workout_params
    params.require(:workout).permit(:name, :mood)
  end
end
