public class Shapes {
  public static void main(String[] args) {
    Rectangular rectangle = new Rectangle(4, 5, 0, 0);
    System.out.println(rectangle.toString() + "\n");
    rectangle.rotate(); System.out.println("rotate");
    System.out.println(rectangle.toString() + "\n");
    rectangle.augmentWidthBy(2); System.out.println("augment width by 2");
    System.out.println(rectangle.toString() + "\n");

    System.out.println("########################################################################");

    Square rectangle2 = new Square(4, 0, 0);
    System.out.println(rectangle2.toString() + "\n");
    rectangle2.rotate(); System.out.println("rotate");
    System.out.println(rectangle2.toString() + "\n");
    Square square = (Square) rectangle2.augmentSideBy(2); System.out.println("augment side by 2");
    System.out.println(square.toString() + "\n");
  }
}