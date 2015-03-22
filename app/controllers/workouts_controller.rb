class WorkoutsController < ApplicationController

  before_action :authenticate_user!, only: [:index, :create, :edit, :update, :destroy]
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find params[:user_id]
    @workouts = @user.workouts.all
  end
end
