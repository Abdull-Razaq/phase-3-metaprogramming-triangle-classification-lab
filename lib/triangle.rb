class Triangle
  # write code here
  attr_accessor :length, :width, :height

  def initialze(length, width, height)
    @length = length
    @width = width
    @height = height
  end

  def kind

    if [@length, @width, @height].any? {|size| size <= 0}
    raise TriangleError, "Positive measurements required"
    end

    sides = [@length, @width, @height].sort

    unless sides[0] + sides[1] > sides[2]
      raise TriangleError, "Triangle ineaquality rule invalidates"
    end


    if @length == @width && @width == @height
      :equilateral
    elsif @length == @width || @length == @height || @width == @height
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end


end



