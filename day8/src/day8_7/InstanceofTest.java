package day8_7;

public class InstanceofTest {

	public static void main(String[] args) {
		FireEngine fe = new FireEngine();
		
		if(fe instanceof FireEngine) {
			System.out.println("This is a FireEngine instance.");
		}
		if(fe instanceof Car) {
			System.out.println("This is a Car instance.");
		}
		if(fe instanceof Object) {
			System.out.println("This is an Object instance.");
		}
		System.out.println(fe.getClass().getName());  // 클래스의 이름을 출력 -> 결과에서 패키지의 이름이 앞에 붙어서 출력된다.(패키지 없이 단독 class로 돌려보면 class이름만 출력된다.)
	}
}  // class
class Car {}
class FireEngine extends Car {}
