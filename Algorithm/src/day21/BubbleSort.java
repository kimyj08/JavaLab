package day21;

public class BubbleSort {

	public static void main(String[] args) {
		int[] arr= {5,3,4,1,2};
		
		System.out.print("정렬 전 : ");
		for(int each:arr) {
			System.out.print(each+" ");
		}
		System.out.println();
		System.out.println();
		
		for(int k=0;k<arr.length-1;k++) {
			for(int i=arr.length-1;i>k;i--) {
				if(arr[i-1]<arr[i]) {
				} else {
					int t=arr[i-1];
					arr[i-1]=arr[i];
					arr[i]=t;
				}
			}
		}
		for(int j=0;j<arr.length;j++) {
			System.out.print(arr[j]);
		}
	}

}
