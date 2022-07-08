package day7_15;

class Calculator {
	int value;
	
	Calculator() {
		this.value=0;
	}
	void add(int val) {
		this.value += val;
	}
	int getValue() {
		return this.value;
	}
}
class UpgradeCalculator extends Calculator{
	void minus(int val) {
		this.value -= val;
	}
}

public class Sample {

	public static void main(String[] args) {
//		Calculator cal = new Calculator();
//		cal.add(10);
//		System.out.println(cal.getValue());
		UpgradeCalculator cal = new UpgradeCalculator();
		cal.add(10);
		cal.minus(3);
		System.out.println(cal.getValue());
	}

}
