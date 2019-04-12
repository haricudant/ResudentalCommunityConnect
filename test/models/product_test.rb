require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
  end
  test "must not save when any of the field is not provided" do
   product = Product.new(subtotal: 1000)
   assert_equal(false, prod.save, "saved to complains table even one of the column is blank")
 end
end
