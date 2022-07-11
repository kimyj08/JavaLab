package day8_3;

public class Point3D extends Point{
	int z=30;
	
	Point3D() {
		this(100, 200, 300);  // Point3D(int x, int y, int z) 를 호출한다.
	}
	Point3D(int x, int y, int z) {
		super(x, y);  // Point(int x, int y) 를 호출한다.
		this.z=z;
	}
}
