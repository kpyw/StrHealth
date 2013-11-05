class WorkoutsController < ApplicationController

workout=Workout.new

def about

end

def index
@workouts=Workout.find_by(id: params[:id])
end


def new
end

def create
end

def show

  @workout = Workout.find_by(id: params[:id])

end

def edit
end

def update
end

def destroy
end

end
