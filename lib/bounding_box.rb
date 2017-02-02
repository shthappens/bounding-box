
class BoundingBox
  attr_accessor :x, :y, :width, :height, :left, :right, :top, :bottom

  def initialize(x = 0, y = 0, width = 0, height = 0)
    @x = x
    @y = y
    @width = width
    @height = height
    @left = x
    @right = x + width
    @top = y + height
    @bottom = y
  end

  def contains_point?(a, b)
    if a >= @left && a <= @right && b >= @bottom && b <= @top
      true
    else
      false
    end
  end

end
