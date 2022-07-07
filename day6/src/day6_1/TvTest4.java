package day6_1;

public class TvTest4 {

	public static void main(String[] args) {
		
		// 길이가 3인 Tv 객체 배열
		Tv[] tvArr = new Tv[3];
		
		for(int i=0;i<tvArr.length;i++) {
			tvArr[i] = new Tv();
			tvArr[i].channel = i+10;  // 각각 객체의 channel에 따른 값을 저장
		}
		
		for(int i=0;i<tvArr.length;i++) {
			tvArr[i].channelUp();  // 객체들마다 채널이 1씩 증가
			System.out.printf("tvArr[%d].channel = %d%n", i, tvArr[i].channel);
		}
	}
}
