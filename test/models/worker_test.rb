require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
 
  def setup
    @w = workers(:alfred)
  end

  test 'invalid without a name' do
    @w.name = nil
    assert @w.invalid?, 'a name is needed'
  end
  
end
