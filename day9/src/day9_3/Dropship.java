package day9_3;

public class Dropship extends AirUnit implements Repairable{
	Dropship() {
		super(125);  // Dropship의 HP는 125이다.
		hitPoint=MAX_HP;
	}
	public String toString() {
		return "Dropship";
	}
}
