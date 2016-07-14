class ReportsController < ApplicationController

  def index
    @levels = Level.order(created_at: :desc)
    @exercises = Exercise.order(created_at: :desc)
    @diets = Diet.order(created_at: :desc)
    search_term = params[:search_term]

    if search_term
     @levels = @levels.where("reading ILIKE ?", "%#{search_term}%")
    end  

    if search_term
     @exercises = @exercises.where("activity ILIKE ?", "%#{search_term}%")
    end  

    if search_term
     @diets = @diets.where("meal ILIKE ?", "%#{search_term}%")
    end  


        # @grouped_levels = Level.all.group_by { |level| level.created_at.to_date }.sum(:reading)
        # @grouped_levels = Level.all.group('date(created_at)').sum(:reading)

        # @grouped_levels.each do |x|
        # @test = x[1]
        

        # x = sum.length
        # y = sum

         # @average = "y / x "
   
  end
end
