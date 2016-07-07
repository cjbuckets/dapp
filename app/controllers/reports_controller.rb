class ReportsController < ApplicationController

  def index
    @levels = Level.order(created_at: :desc)
    @exercises = Exercise.order(created_at: :desc)
    @diets = Diet.order(created_at: :desc)


        @grouped_levels = Level.all.group_by { |level| level.created_at.to_date }.sum(:reading)
        # @grouped_levels = Level.all.group('date(created_at)').sum(:reading)

        # @grouped_levels.each do |x|
        # @test = x[1]
        

        # x = sum.length
        # y = sum

         # @average = "y / x "
   
    end
end
