require 'test_helper'

class WarriorTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Warrior.new.valid?
  end
end
