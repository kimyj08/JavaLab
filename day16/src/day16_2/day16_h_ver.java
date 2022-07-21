package day16_2;

public class day16_h_ver {

	public static void main(String[] args) {
		int arr[]= {4,2,3,5,1};
	      int i=0;
	      for(i=0;i<arr.length;i++) {
	         if(arr[i]== 5) {
	            System.out.println(arr[i]+"는"+(i+1)+"번째에 있습니다.");
	            break;
	         }
	         }
	      if(i==arr.length){
	    	  System.out.println("찾는 값이 없습니다.");
	      }
	   }
	}

