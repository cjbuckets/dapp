class ActivitiesController < ApplicationController
  def index
    @exercises = Exercise.order(date: :desc)
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(
        activity: params[:activity],
        duration: params[:duration],
        date:     params[:date]
        )
    flash[:success] = "Activity Created"
    redirect_to "/activities"    
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
  end

  def edit
    @exerise = Exercise.find_by(id: params[:id])
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])

      if @exercise.update(
          activity: params[:activity],
          duration: params[:duration],
          date:     params[:date]
          )

      flash[:success] = "Activity Updated"
      redirect_to "/activities/#{@exercise.id}"
      else
        render :edit
      end
  end

  def destroy
    @exercise = Exercise.find_by(id: params[:id])
      @exercise.destroy

      flash[:yo!] = "Activity deleted!"
      redirect_to "/activities" 
  end


end
