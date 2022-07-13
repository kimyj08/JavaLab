package day10_1;

class FoolException extends Exception {
}

public class Sample {

	public void sayNick(String nick) {
		try {
		if("fool".equals(nick)) {
//			return;
			throw new FoolException();  // 객체 생성(에러 객체가 되도록 만들어줌.)
		}
		System.out.println("당신의 별명은 "+nick+"입니다.");
	} catch(FoolException e) {
		System.err.println("FoolException이 발생했습니다.");
	}
}

	public static void main(String[] args) {
		Sample sample = new Sample();
		sample.sayNick("fool");
		sample.sayNick("genious");

	}

}
