package day21;

public class InsertionSort {

	public static void main(String[] args) {
		int[] arr= {5,3,4,1,2};
		
		for(int i=1;i<arr.length;i++) {
			int t=arr[i];
			int k=1;
			while(k>0&&arr[k-1]>t) {
				arr[k]=arr[k-1];
				k--;
			}
			arr[k]=t;
		}
		for(int j=0;j<arr.length;j++) {
		System.out.print(arr[j]);
		}

	}

}
