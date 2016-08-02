require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "lists have items" do
    list_a = List.create
    item_a = Item.create
    list_a.items << item_a
    assert_equal list_a, item_a.list
  end
end
