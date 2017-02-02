class BoundingArea

  def initialize(box_array = [])
    @box_array = box_array
  end

  def boxes_contain_point?(c, d)
    has_point = false
    @box_array.each do |box|
      if box.contains_point?(c, d)
        has_point = true
      end
    end
    has_point
  end

end
