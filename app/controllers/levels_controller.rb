class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end

  def new
    @level = Level.new
  end

  def create
    @level = Level.create(
        reading: params[:reading],
        date:    params[:date],
        time:    params[:time]
        )
    flash[:success] = "Reading Created"
    redirect_to "/levels"
  end

  def show
    @level = Level.find_by(id: params[:id])
  end

  def edit
    @level = Level.find_by(id: params[:id])
  end

  def update
    @Level = Level.find_by(id: params[:id])

      if @level.update(
          reading: params[:reading],
          date:    params[:date],
          time:    params[:time]
          )

      flash[:success] = "Level Updated"
      redirect_to "/levels/#{@level.id}"
      else
        render :edit
      end
  end

  def destroy
    @level = Level.find_by(id: params[:id])
      @level.destroy

      flash[:yo!] = "Reading deleted!"
      redirect_to "/levels" 
  end
end
