package day6_5;

public class ReturnTest {

	public static void main(String[] args) {
		ReturnTest r = new ReturnTest();
		
		int result = r.add(3,5);
		System.out.println(result);
		
		int[] result2 = {0};
		r.add(3,5,result2);
		System.out.println(result2[0]);

	}
	
	int add(int a, int b) {
		return a + b;
	}
	
	void add(int a, int b, int[] result) {
		result[0] = a+b;
	}
}
// 메서드 오버로딩 : 자료형에 따라서 각자 맞는 해당 메서드로 다르게 떨어진다. 메서드 오버라이딩이랑 헷갈리지 말자!