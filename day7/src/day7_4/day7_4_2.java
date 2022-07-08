package day7_4;

public class day7_4_2 {

	public static void main(String[] args) {
		int sum = 0;
		int i = 0;
		while(i<=1000) {
			if(i%3==0) {
//				System.out.println(i);
				sum+=i;
			}
			i+=1;
		}
		System.out.println(sum);
	}
}
