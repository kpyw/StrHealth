class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @workout = Workout.new
    @workout.wo_name = params[:wo_name]
    @workout.exercise_id = params[:exercise_id]

    if @workout.save
      redirect_to workouts_url
    else
      @errors = @workout.errors.full_messages
      render 'new'
    end
  end

  def edit
    @workout = Workout.find_by(:id => params[:id])
  end

  def update
    @workout = Workout.find_by(:id => params[:id])
    @workout.wo_name = params[:wo_name]
    @workout.exercise_id = params[:exercise_id]

    if @workout.save
      redirect_to workouts_url
    else
      render 'new'
    end
  end

  def destroy
    @workout = Workout.find_by(:id => params[:id])
    @workout.destroy
    redirect_to workouts_url
  end
end
