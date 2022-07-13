package day10;

public class Exam1 {

	public static void main(String[] args) {
//		int a = 4 / 0;  // by zero
//		double a = 4.0 / 0;  // 이때는 에러가 안남.
//		System.out.println(a);
		
		try {
			int[] a = {1, 2, 3};  // ArrayIndexOutOfBoundsException
			System.out.println(a[3]);
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("에러가 발생했습니다.");  // ArrayIndexOutOfBoundsException 이 에러가 발생하면 이렇게 처리해라.
		} finally {
			System.out.println("에러가 생기든 안생기든 항상 처리된다.");
		}
		
	}

}
