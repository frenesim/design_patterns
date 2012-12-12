public class Square implements Rectangular {
  private Rectangle rect;

  public Square(int side, int x, int y) {
    rect = new Rectangle(side, side, x, y);
  }

  public int getWidth() {
    return rect.getWidth();
  }

  public Rectangular setWidth(int size) {
    return setSide(size);
  }

  public int getHeight() {
    return rect.getHeight();
  }

  public Rectangular setHeight(int size) {
    return setSide(size);
  }

  public int getSide() {
    return rect.getWidth();
  }

  public Rectangular setSide(int size) {
    rect.setWidth(size);
    rect.setHeight(size);
    return this;
  }

  public int getX() {
    return rect.getX();
  }

  public int getY() {
    return rect.getY();
  }

  public int perimeter() {
    return rect.perimeter();
  }

  public int area() {
    return rect.area();
  }

  public Rectangle getRectangle() {
    return rect;
  }

  public Rectangular augmentSideBy(int size) {
    rect.augmentWidthBy(size);
    rect.augmentHeightBy(size);
    return this;
  }

  public Rectangular augmentWidthBy(int size) {
    return augmentSideBy(size);
  }

  public Rectangular augmentHeightBy(int size) {
    return augmentSideBy(size);
  }

  public Rectangular rotate() {
    return rect.rotate();
  }

  public String toString() {
    return "Square:\n\twidth: " + getWidth() + "\theight: " + getHeight() +
    "\n\tx: " + getX() + "\t\ty: " + getY() +
    "\n\tperimeter: " + perimeter() + "\tarea: " + area();
  }
}
