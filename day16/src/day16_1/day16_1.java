package day16_1;

public class day16_1 {

	public static void main(String[] args) {
		int a[] = {12, 13, 11, 14, 10};
		int max=a[0];
		
		for (int i = 1; i < a.length; i++) {
			if(a[i]>max) {
				max=a[i];
			}
		}
		System.out.println(max);
	}
}
