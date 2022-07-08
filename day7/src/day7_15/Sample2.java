package day7_15;

class Calculator2 {
	int value;
	
	Calculator2() {
		this.value = 0;
	}
	void add(int val) {
		this.value += val;
	}
	int getValue() {
		return this.value;
	}
}

class MaxLimitCalculator extends Calculator2{
	void add(int val) {
		this.value += val;
		if(this.value>100) {
			this.value=100;
		}
	}
}

public class Sample2 {

	public static void main(String[] args) {
		MaxLimitCalculator cal = new MaxLimitCalculator();
		cal.add(50);
		cal.add(60);
		System.out.println(cal.getValue());
	}
}
