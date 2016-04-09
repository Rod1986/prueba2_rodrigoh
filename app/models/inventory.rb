class Inventory < ActiveRecord::Base
  belongs_to :operation, dependent: :destroy

  before_save :to_downcase

  validates :sku, uniqueness: true, presence: true


  private
  
  def to_downcase
     self.sku.downcase!
  end

end
