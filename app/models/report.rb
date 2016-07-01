class Report < ActiveRecord::Base

belongs_to :user
belongs_to :exercise432 43u32 
belongs_to :diet
belongs_to :level

end

  def week
  self.created_at.strftime('%W')
  end

end