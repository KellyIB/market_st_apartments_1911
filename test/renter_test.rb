require './lib/renter'
require './lib/apartment'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class RenterTest <Minitest::Test

 def setup
   @renter1 = Renter.new("Jessie")
   @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
 end

  def test_renter_is_instance_of_renter
    assert_instance_of Renter, @renter1
  end

  def test_renter_has_a_name
    assert_equal "Jessie", @renter1.name

  end

end
