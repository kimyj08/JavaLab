package day17_2;

public class StringArr2 {

	public static void main(String[] args) {
		int a[] = new int[5];
		for(int i=0;i<a.length;i++) {
			a[i]=5-i;
		}
		for(int j=0;j<a.length;j++) {
			System.out.println("a["+j+"] = "+a[j]);
		}

	}

}
