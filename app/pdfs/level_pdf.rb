class LevelPdf < Prawn::Document
  def initialize(level)
    super(top_margin: 70)
    @levels = level
    levels
    line_items
  end

  def levels
    text "levels \##{@level}", size: 30, style: :bold
    
  end

  def line_items
    move_down 20
    table [[1, 2],[3, 4]]
      # row(0).font_style = :bold
      # columns(1..3).align = :right
      # self.row_colors = ["DDDDDD", "FFFFFF"]
      # self.header = true
  end

  # def line_item_rows
  #   [["Test", "test", "Test Again", "Last Test"]] +
  #   @levels.line_items.map do |item|
  #     [item.reading, item.date, item.date, item.time]
  #   end
  # end
end