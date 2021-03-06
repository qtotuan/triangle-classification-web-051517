require 'pry'

class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.valid? == false
      raise TriangleError
    else
      if self.side1 == self.side2 && self.side2 == self.side3
        return :equilateral
      elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
        return :isosceles
      else
        return :scalene
      end
    end
  end

  def valid?
    self.side1 + self.side2 > self.side3 &&
    self.side2 + self.side3 > self.side1 &&
    self.side1 + self.side3 > self.side2 &&
    self.side1 > 0 &&
    self.side2 > 0 &&
    self.side3 > 0
  end
end


class TriangleError < StandardError
  def message
    "You must create a valid triangle!"
  end
end
