package day20_1;

public class SelectionSort {

	public static void main(String[] args) {
		int[] arr = {12,13,11,14,10};  // 정렬할 배열
		
		System.out.print("정렬 전 : ");
		for(int each:arr) {
			System.out.print(each+" ");
		}
		System.out.println();
		System.out.println();

		for(int i=0;i<arr.length-1;i++) {
			int min=i;  // 첫번째 값을 임시 최소값으로 가정
			for(int k=i+1;k<arr.length;k++) {
				// 최소값 찾기 처리
				if(arr[k]<arr[min]) {
					min=k;
				}
			}
			// 최소값 변경이 필요한 경우 교환 처리
			int t=arr[min];
			arr[min]=arr[i];
			arr[i]=t;
			
			for(int each:arr) {
				System.out.print(each+" ");
			}
			System.out.println();
		}
		System.out.println();
		// 정렬된 최종 배열 출력
		System.out.print("정렬 후 : ");

		for(int j=0;j<arr.length;j++) {
			System.out.print(arr[j]+" ");
		}
	}

}
