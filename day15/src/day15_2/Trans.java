package day15_2;

public class Trans {

	public static void main(String[] args) {
		int a=2, b=3;
		int t=0;
		
		System.out.printf("a:%d, b:%d%n", a, b);
		
		t=a;
		a=b;
		b=t;
		
		System.out.printf("a:%d, b:%d", a, b);
	}
}
