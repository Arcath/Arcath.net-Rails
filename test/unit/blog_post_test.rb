require 'test_helper'

class BlogPostTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BlogPost.new.valid?
  end
end
