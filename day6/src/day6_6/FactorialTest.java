package day6_6;

public class FactorialTest {

	public static void main(String[] args) {
		int result  = factorial(4);
		
		System.out.println(result);
	}
	static int factorial (int n) {  // 메서드에 static을 넣으면 객체를 생성하지 않고 바로 호출이 가능하다.
		int result=0;
		
		if(n==1) {
			result=1;
		} else {
			result = n*factorial(n-1);
		}
		return result;
	}
}
