package day8_1;

public class CaptionTvTest {

	public static void main(String[] args) {
		CaptionTv ctv = new CaptionTv();
		ctv.channel=10;  // 조상 클래스로부터 상속받은 멤버
		ctv.channelUp();  // 조상 클래스로부터 상속받은 멤버
		System.out.println(ctv.channel);
		ctv.displayCaption("Hello, World");
		ctv.caption=true;  // 캡션(자막) 기능을 켠다.
		ctv.displayCaption("Hello, World");
	}

}
