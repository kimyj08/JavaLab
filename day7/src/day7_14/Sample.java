package day7_14;

class Animal {
	String name;
		
	void setName(String name) {
		this.name = name;
	}
}
class Dog extends Animal {
	void sleep() {
		System.out.println(this.name+" zzz");
	}
}
class HouseDog extends Dog {
	HouseDog(String name) {
		this.setName(name);
	}
	HouseDog(int type) {
		if(type==1) {
			this.setName("yorkshire");
		} else if(type==2) {
			this.setName("bulldog");
		}
	}
	void sleep() {
		System.out.println(this.name+" zzz in house.");
	}
	void sleep(int hour) {
		System.out.println(this.name+" zzz in house for "+hour+" hours");
	}
}

public class Sample {
	public static void main(String[] args) {
//		HouseDog houseDog = new HouseDog();  // 위에 이름을 입력해야 기능하는 생성자를 생성했는데 이름을 입력해주지 않고 값이 비어있어서 오류가 난 상태임.
//		// 이름을 지정해주면 해결됨.
//		houseDog.setName("happy");
//		houseDog.sleep();
//		houseDog.sleep(3);
		HouseDog happy = new HouseDog("happy");
		HouseDog yorkshire = new HouseDog(1);
		System.out.println(happy.name);
		System.out.println(yorkshire.name);
	}
}
