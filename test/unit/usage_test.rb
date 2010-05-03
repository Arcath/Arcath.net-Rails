require 'test_helper'

class UsageTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Usage.new.valid?
  end
end
