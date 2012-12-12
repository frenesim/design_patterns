require 'forwardable'

class Square
  extend Forwardable

  def_delegators :@rect, :width, :height, :x, :y,
    :perimeter, :area, :rotate, :rotate!

  def initialize(side, x, y)
    @rect = Rectangle.new side, side, x, y
  end

  def side
    return @rect.width if @rect.width == @rect.height
    raise StandardError, "Something went wrong with this square(width of #{@rect.width} should equal height of #{@rect.height}"
  end

  def side=(size)
    rect.width, rect.height = size, size
  end

  def augment_side_by(size)
    Square.new side + size, top_left_corner
  end

  def augment_side_by!(size)
    @rect.augment_width_by! size
    @rect.augment_height_by! size
    self
  end

  def rectangle
    @rect.dup
  end

  def to_s
    <<-EOF
Square:
width: #{width}\theight: #{height}
x: #{x}\t\ty: #{y}
perimeter: #{perimeter}\tarea: #{area}
    EOF
  end
end
