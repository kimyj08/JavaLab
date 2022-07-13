package javaStudy2;

public class ExamExam {

	public static void main(String[] args) {
		ExceptionExam ex = new ExceptionExam();
		/* 배열이 50보다 큰 경우 */
		int num = ex.get50thItem(new int[100]);
		System.out.println("array 배열의 50번째 요소의 값 : "+num);

		/* 배열이 50보다 작은 경우 */
//		int num = ex.get50thItem(new int[30]);
//		System.out.println("array 배열의 50번째 요소의 값 : "+num);
	}

}
