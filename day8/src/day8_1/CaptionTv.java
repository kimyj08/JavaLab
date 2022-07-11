package day8_1;

public class CaptionTv extends Tv {
	boolean caption;  // 캡션상태(on/off)
	void displayCaption(String text) {
		if(caption) {  // 캡션 상태가 on(true)일 때만 text를 보여 준다.
			System.out.println(text);
		}
	}
}
