require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "should create one father" do
    father_one = categories(:one)
    father_two = categories(:two)
    children = categories(:three)

    father_one.children << children
    father_two.children << children

    assert_not children.category_id == father_one.id
  end
end
