class LevelsController < ApplicationController
  def index
    # @test_token = ENV['test_api_token']
    # @test_secret = ENV['test_api_secret']

    @levels = Level.order(created_at: :desc)
    # @last_seven_counts = @levels.first(7)
    respond_to do |format|
      format.html
      format.pdf do
        pdf= LevelPdf.new(@levels)
        send_data pdf.render, filename: "level_#{@levels}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
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


  def new
    @level = Level.new
  end

   
  def show
    @level = Level.find_by(id: params[:id])
  end

  def edit
    @level = Level.find_by(id: params[:id])
  end

  def update
    @level = Level.find_by(id: params[:id])

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
