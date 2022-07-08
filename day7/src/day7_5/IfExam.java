package day7_5;

public class IfExam {

	public int IfTest(int value) {
		int ret=0;
		if(value%3==0) {
			ret=3;
		} else if(value%4==0) {
			ret=4;
		} return ret;
	}
	public static void main(String[] args) {
		IfExam exam = new IfExam();
		System.out.println(exam.IfTest(6));
		System.out.println(exam.IfTest(8));
	}

}
