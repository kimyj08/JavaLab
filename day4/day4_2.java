package day4;

public class day4_2 {
    public static void main(String[] args) {
        int[] arr = {10,20,30,40,50};

        // 일반 for 구문
        // for (int i=0;i<=4;i++) {
        //     System.out.println(arr[i]);
        // }

        for(int i : arr) {
            System.out.println(i);
        }
    }
}
