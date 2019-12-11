require 'pry'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class Building
  attr_reader :average_rent
  attr_accessor :units

  def initialize
    @units = []
    @average_rent = 0
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    rent_total = 0
    @units.map do |unit|
      rent_total += unit.monthly_rent
    end
    @average_rent = (rent_total / @units.length.to_f).round(2)
  end

  def renter_with_highest_rent
    @units.max_by do |unit|
      unit.monthly_rent
    end
  end




end
