require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BuildingTest <Minitest::Test

 def setup
   @renter1 = Renter.new("Jessie")
   @renter2 = Renter.new("Spencer")
   @renter3 = Renter.new("Max")
   @building = Building.new
   @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
   @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
   @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
   @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 3, bedrooms: 2})






 end

 def test_building_is_instance_of_Building
   assert_instance_of Building, @building
 end

 def test_building_starts_with_no_units_and_can_add_units
     assert_equal [],  @building.units
     @building.add_unit(@unit1)
     @building.add_unit(@unit2)
     assert_equal [@unit1, @unit2], @building.units
   end

   def test_it_knows_the_average_rent
     @building.add_unit(@unit1)
     @building.add_unit(@unit2)
     assert_equal 1099.5, @building.average_rent
   end

   def test_building_knows_highest_rent
       @building.add_unit(@unit1)
       @building.add_unit(@unit2)
       @building.add_unit(@unit3)
       @unit1.add_renter(@renter2)

       assert_equal @renter2, @building.renter_with_highest_rent
     end






 end
