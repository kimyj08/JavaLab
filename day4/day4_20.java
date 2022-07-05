package day4;

import java.util.*;

import javax.lang.model.element.Element;

public class day4_20 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        outer : while(true) {
            System.out.println("(1) square");
            System.out.println("(2) square root");
            System.out.println("(3) log");
            System.out.print("Which one do you like in menu(1~3, 0 : DONE)? > ");
            int num = scanner.nextInt();

            if(num==0) {
                break;
            } else if (1 <= num && num <= 3) {
                int tmp;
                while(true) {
                    System.out.print("Input number.(0 : FINISH, 99 : DONE) > ");
                    tmp = scanner.nextInt();

                    if (tmp==0) {
                        break;
                    } else if (tmp==99) {
                        break outer;
                    } else if (num==1) {
                        System.out.println("result : " + (tmp*tmp));
                    } else if (num==2) {
                        System.out.println("result : " + (Math.sqrt(tmp)));
                    } else if (num==3) {
                        System.out.println("result : " + (Math.log(tmp)));
                    }
                }
            } else {
                System.out.println("You got the wrong number.");
            }
        }
        System.out.println("DONE.");
    }
}
