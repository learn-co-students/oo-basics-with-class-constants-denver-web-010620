require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !BRANDS.include?(@brand)
      BRANDS << @brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def self.BRANDS
    BRANDS
  end

end

shoe1 = Shoe.new "nike"
shoe2 = Shoe.new "uggs"
shoe3 = Shoe.new "adi"
shoe4 = Shoe.new "uggs"

#binding.pry