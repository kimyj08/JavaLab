package javaStudy;

public class MyCalTest {

	public static void main(String[] args) {
		Calculator cal = new MyCal();
//		cal.plus(3, 4);

		System.out.println(cal.plus(3, 4));
		System.out.println(cal.exec(5, 6));
		
		System.out.println(Calculator.exec2(5, 6));
		// 인터페이스에 static 메서드를 사용하면 간단한 기능을 가진 유틸리티 성격의 인터페이스로 사용할 수 있다.
	}

}
