public interface Rectangular {

  public int getWidth();

  public Rectangular setWidth(int size);

  public int getHeight();

  public Rectangular setHeight(int size);

  public int getX();

  public int getY();

  public int perimeter();

  public int area();

  public Rectangular augmentWidthBy(int size);

  public Rectangular augmentHeightBy(int size);

  public Rectangular rotate();

  public String toString();
}