class MealsController < ApplicationController

  def index
    @diets = Diet.all
  end

  def new
    @diets = Diet.new
  end

  def create
    @diets = Diet.create(
        meal: params[:meal],
        date:    params[:date],
        carbs:    params[:carbs]
        )
    flash[:success] = "Reading Created"
    redirect_to "/meals"
  end

  def show
    @diet = Diet.find_by(id: params[:id])
  end

  def edit
    @diet = Diet.find_by(id: params[:id])
  end

  def update
    @diet = Diet.find_by(id: params[:id])

      if @diet.update(
          meal:  params[:meal],
          date:  params[:date],
          carbs: params[:carbs]
          )

      flash[:success] = "Meal Updated"
      redirect_to "/meals/#{@diet.id}"
      else
        render :edit
      end
  end

  def destroy
    @diet = Diet.find_by(id: params[:id])
      @diet.destroy

      flash[:yo!] = "Meal deleted!"
      redirect_to "/meals" 
  end


end
