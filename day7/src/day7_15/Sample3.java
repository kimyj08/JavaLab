package day7_15;

class Calculator3 {
	int value;
	
	Calculator3() {
		this.value=0;
	}
	void add(int val) {
		this.value+=val;
	}
	int getVaule() {
		return this.value;
	}
	boolean isOdd(int num) {
		return num%2==1;
	}
}

public class Sample3 {

	public static void main(String[] args) {
		Calculator3 cal = new Calculator3();
		System.out.println(cal.isOdd(3));
		System.out.println(cal.isOdd(4));

	}

}
