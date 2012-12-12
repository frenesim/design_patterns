class Rectangle
  attr_accessor :width, :height, :x, :y

  def initialize(width, height, x, y)
    @width, @height = width, height
    @x, @y = x, y
  end

  def perimeter
    width * 2 + height * 2
  end

  def area
    width * height
  end

  def augment_width_by(size)
    Rectangle.new width + size, height, x, y
  end

  def augment_width_by!(size)
    @width += size
    self
  end

  def augment_height_by(size)
    Rectangle.new width, height + size, x, y
  end

  def augment_height_by!(size)
    @height += size
    self
  end

  def rotate
    Rectangle.new height, width, x, y
  end

  def rotate!
    unless width == height
      old_width = width
      @width = height
      @height = old_width
    end
    self
  end

  def to_s
    string = <<-EOF
Rectangle:
width: #{width}\theight: #{height}
x: #{x}\t\ty: #{y}
perimeter: #{perimeter}\tarea: #{area}
    EOF
  end

end