package day8_8;

public class Tv extends Product{
	Tv() {
		super(100);  // 조상클래스의 생성자 Product(int price)를 호출한다.
	}
	public String toString() {
		return "Tv";
	}
}
