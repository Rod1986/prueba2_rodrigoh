class Operation < ActiveRecord::Base
  belongs_to :worker
  has_one :inventory

  scope :created_last_day, ->(time) { where("created_at = ?", time) }

end
