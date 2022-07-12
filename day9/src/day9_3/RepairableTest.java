package day9_3;

public class RepairableTest {

	public static void main(String[] args) {
		Tank tank = new Tank();
		Dropship dropship = new Dropship();
		
		Marine marine = new Marine();
		SCV scv = new SCV();
		scv.repair(tank);  // SCV가 Tank를 수리하도록 한다.
		scv.repair(dropship);
//		scv.repair(marine);  // 에러! repair(Repairable) in SCV cannot be applied to (Marine)
	}

}
