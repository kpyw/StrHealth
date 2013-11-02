class ExercisesController < ApplicationController

def about

end

def index
@exercises=Exercise.order(:name)
end


def new
end

def create
end

def show

  @exercise = Exercise.find_by(id: params[:id])

end

def edit
end

def update
end

def destroy
end

end
