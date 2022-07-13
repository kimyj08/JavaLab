package day10_1;

class FoolException extends Exception {
}

public class Sample2 {

	public void sayNick(String nick) throws FoolException {  // 에러가 발생하면 호출한 곳으로 던진다.
		if("fool".equals(nick)) {
//			return;
			throw new FoolException();  // 객체 생성(에러 객체가 되도록 만들어줌.)
		}
		System.out.println("당신의 별명은 "+nick+"입니다.");
}

	public static void main(String[] args) {
		Sample2 sample = new Sample2();
		try {
			sample.sayNick("fool");
			sample.sayNick("genious");
		} catch (FoolException e) {
			System.err.println("FoolException이 발생했습니다.");
		}
	}
}
