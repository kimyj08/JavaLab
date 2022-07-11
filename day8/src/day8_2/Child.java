package day8_2;

public class Child extends Parent{
	void method() {
		System.out.println("x="+x);
		System.out.println("this.x="+this.x);  // 자식거에서 가져온 것.
		System.out.println("super.x="+super.x);  // 부모거에서 가져온 것.
	}
}
