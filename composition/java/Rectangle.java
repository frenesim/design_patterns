public class Rectangle implements Rectangular {
  private int width, height;
  private int x, y;

  public Rectangle(int width, int height, int x, int y) {
    this.width = width;
    this.height = height;
    this.x = x;
    this.y = y;
  }

  public int getWidth() {
    return this.width;
  }

  public Rectangular setWidth(int size) {
    this.width = size;
    return this;
  }

  public int getHeight() {
    return this.height;
  }

  public Rectangular setHeight(int size) {
    this.height = size;
    return this;
  }

  public int getX() {
    return this.x;
  }

  public Rectangular setX(int x) {
    this.x = x;
    return this;
  }

  public int getY() {
    return this.y;
  }

  public Rectangular setY(int y) {
    this.y = y;
    return this;
  }

  public int perimeter() {
    return width * 2 + height * 2;
  }

  public int area() {
    return width * height;
  }

  public Rectangular augmentWidthBy(int size) {
    this.width += size;
    return this;
  }

  public Rectangular augmentHeightBy(int size) {
    this.height += size;
    return this;
  }

  public Rectangular rotate() {
    if(height != width) {
      int tmpWidth = width;
      this.width = this.height;
      this.height = tmpWidth;
    }
    return this;
  }

  public String toString() {
    return "Rectangle:\n\twidth: " + getWidth() + "\theight: " + getHeight() +
    "\n\tx: " + getX() + "\t\ty: " + getY() +
    "\n\tperimeter: " + perimeter() + "\tarea: " + area();
  }
}
