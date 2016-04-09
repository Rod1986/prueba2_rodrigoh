require 'test_helper'

class InventoryTest < ActiveSupport::TestCase

  def setup
    @i = inventories(:wheel_one)
  end

  test 'item without an operation' do
    assert_not_nil @i.operation, 'This item does not have an operation assigned'
  end

end
