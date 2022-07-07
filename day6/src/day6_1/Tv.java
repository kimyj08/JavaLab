package day6_1;

public class Tv {
	// Tv의 속성 설정
	String colcr;  // 색상
	boolean power;  // 전원
	int channel;  // 채널

	// Tv 매서드 (기능, 함수)
	void power() {
		power = !power;  // 반대로 뒤집어 주는 기능.
	}
	void channelUp() {
		++channel;
	}
	void channelDown() {
		--channel;
	}
	
	
}
