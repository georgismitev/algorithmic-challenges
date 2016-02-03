import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Euler008 {
  public static void main(String[] args) {
    Map<Character, Integer> map = new HashMap<Character, Integer>();
    map.put('0', 0);
    map.put('1', 1);
    map.put('2', 2);
    map.put('3', 3);
    map.put('4', 4);
    map.put('5', 5);
    map.put('6', 6);
    map.put('7', 7);
    map.put('8', 8);
    map.put('9', 9);

    Scanner scanner = new Scanner(System.in);
    int t = scanner.nextInt();
    int n, k, greatest, product, i, j;
    String number;

    for(int l = 0; l < t; l++) {
      n = scanner.nextInt();
      k = scanner.nextInt();
      number = scanner.next();
      greatest = -1;

      for (i = 0; i < n - k; i++) {
        product = 1;
        for (j = 0; j < k; j++) {
          product *= map.get(number.charAt(i + j));
        }
        if (product > greatest) {
          greatest = product;
        }
      }

      System.out.println(greatest);
    }
  }
}
