require './lib/renter'
require './lib/apartment'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ApartmentTest <Minitest::Test

 def setup
   @renter1 = Renter.new("Jessie")
   @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
 end

  def test_unit1_is_instance_of_Apartment
    assert_instance_of Apartment, @unit1
  end

  def test_unit1_has_a_number
    assert_equal "A1", @unit1.number
  end

  def test_unit1_has_a_monthly_rent
    assert_equal 1200 , @unit1.monthly_rent
  end

  def test_unit1_has_bathrooms
    assert_equal 1, @unit1.bathrooms
  end

  def test_unit1_has_bedrooms
    assert_equal 1, @unit1.bedrooms
  end

  def test_unit1_starts_vacant_and_can_gain_a_renter
    assert_nil @unit1.renter
    @unit1.add_renter(@renter1)
    assert_equal @renter1, @unit1.renter
  end

  
end
