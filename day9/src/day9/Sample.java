package day9;

interface Predator {
	String getFood();  // 이름만 만들고 아래에서 메서드를 구현해주지 않으면 오류가 난다.
}

class Animal {
	String name;
	
	void setName(String name) {
		this.name=name;
	}
}

class Tiger extends Animal implements Predator {
	public String getFood() {
		return "apple";
	}
}

class Lion extends Animal implements Predator {
	public String getFood() {
		return "banana";
	}
}

class ZooKeeper {
	void feed(Predator predator) {
		System.out.println("feed "+predator.getFood());
	}
}

public class Sample {

	public static void main(String[] args) {
		ZooKeeper zooKeeper = new ZooKeeper();
		Tiger tiger = new Tiger();
		Lion lion = new Lion();
		zooKeeper.feed(tiger);  // feed apple 출력
		zooKeeper.feed(lion);  //  feed banana 출력
	}
}
