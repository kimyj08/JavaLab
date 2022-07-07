package day6_14_javaStudy;

public class CarExam {

	public static void main(String[] args) {
		Car car1 = new Car();
		Car car2 = new Car("자동차");
		Car car3 = new Car("자동차",1234);
		
		System.out.println(car1.name+" , "+car1.number);
		System.out.println(car2.name+" , "+car2.number);
		System.out.println(car3.name+" , "+car3.number);
	}
}
