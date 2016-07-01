class ReportsController < ApplicationController

  def index
    @levels = Level.order(created_at: :desc)
    @exercises = Exercise.order(created_at: :desc)
    @diets = Diet.order(created_at: :desc)

  #     sum = 0 
  #     @levels.each do |level|
  #     sum += level.reading.to_i
  #     end

  #   x = sum.length
  #   y = sum

  #   puts y / x 
  # end

  # current_user.comments.group("DATE_TRUNC('month', created_at)").count
  end

  def average 
      Level.all.group_by { |level| level.created_at.to_date }
  end
end
