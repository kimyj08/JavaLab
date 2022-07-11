package day8_5;

public class TimeTest {

	public static void main(String[] args) {
		Time t = new Time(12, 35, 30);
		System.out.println(t);
//		t.hour=13;  // 에러! 변수 hour의 접근제어자가 private이므로 접근할 수 없다.
		t.setHour(t.getHour()+1);
		System.out.println(t);

	}

}
