require 'test_helper'

class ComplainTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "must not save a appliance when name and watt
are not provided" do
   appliance = Appliance.new(Appliance_name: "Manoj")
   assert_equal(false, appliance.save, "saved the customer even
though at least one of the forename,
surname and/or email were not provided!")
end
end
