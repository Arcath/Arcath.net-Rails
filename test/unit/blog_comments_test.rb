require 'test_helper'

class BlogCommentsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BlogComments.new.valid?
  end
end
