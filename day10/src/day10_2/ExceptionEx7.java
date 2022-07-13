package day10_2;

public class ExceptionEx7 {

	public static void main(String[] args) {
		System.out.println(1);
		System.out.println(2);
		try {
			System.out.println(3);
			System.out.println(0/0);  // 고의로 에러 발생.
			System.out.println(4);  // 따라서, 실행되지 않는다.
		} catch (ArithmeticException ae) {
			if (ae instanceof ArithmeticException) {
				System.out.println("true");
			} System.out.println("ArithmeticException");
		} catch (Exception e) {
		System.out.println("Exception");
		}
		System.out.println(6);
	}
}
