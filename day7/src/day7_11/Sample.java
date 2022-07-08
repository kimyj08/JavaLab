package day7_11;

public class Sample {
	
	void sayNick(String nick) {
		if("fool".equals(nick)) {
			return;
		}
		System.out.println("나의 별명은 "+nick+" 입니다.");
	}

	public static void main(String[] args) {
		Sample sample = new Sample();
		sample.sayNick("angel");
		sample.sayNick("fool");
	}

}
