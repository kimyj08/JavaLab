package day16_2;

public class day16_2 {

	public static void main(String[] args) {
		int a[]= {4,3,2,5,1};
		int v=0;
		for (int i = 0; i < a.length; i++) {
			if(a[i]==5) {
				System.out.printf("찾는 값은 %d번째에 있습니다.%n",i+1);
			} else if(a[i]<5) {
				v=-1;
			}
		}
		if(v==-1) {
			System.out.println("값을 찾지 못했습니다.");
		}
	}
}
