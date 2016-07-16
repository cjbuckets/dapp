class LevelPdf < Prawn::Document
  def initialize(level)
    super(top_margin: 70)
    @levels = level
    levels
    line_items
  end

  def levels
    text "CJ Paz Glucose Readings ", size: 20, style: :bold
    
  end

  def line_items
    move_down 20
    table line_item_rows 
    
  end

  def line_item_rows
    [["Date", "Time","Reading",]] +
    @levels.map do |level|
      [level.date, level.time, level.reading]
    end
  end
end

