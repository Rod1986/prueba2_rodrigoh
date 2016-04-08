class Worker < ActiveRecord::Base
  has_many :operation 

  validates :name, presence: true

end
