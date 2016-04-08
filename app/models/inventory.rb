class Inventory < ActiveRecord::Base

  before_save :to_downcase

  validates :sku, uniqueness: true, presence: true

  private
  
  def to_downcase
     self.sku.downcase!
  end

end
