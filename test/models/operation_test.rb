require 'test_helper'

class OperationTest < ActiveSupport::TestCase

  def setup
    @o = operations(:number_one)
  end

  test 'operation needs a worker' do
    assert_not_nil @o.worker, 'a worker needs to be assigned'
  end

end
