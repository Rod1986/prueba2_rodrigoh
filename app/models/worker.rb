class Worker < ActiveRecord::Base
  has_many :operations, dependent: :destroy 

  validates :name, presence: true


  scope :completed, -> {where(completed: true)}

end
