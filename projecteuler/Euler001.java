import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Euler001 {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    int t = scanner.nextInt();
    for (int i = 0; i < t; i++) {
      int n = scanner.nextInt();
      long l = (n % 3 == 0 ? n - 1 : n) / 3;
      long sumOf3 = (3 * (l + 1) * l) / 2;
      long r = (n % 5 == 0 ? n - 1 : n) / 5;
      long sumOf5 = (5 * (r + 1) * r) / 2;
      long k = (n % 15 == 0 ? n - 1 : n) / 15;
      long sumOf15 = (15 * (k + 1) * k) / 2;
      System.out.println(sumOf3 + sumOf5 - sumOf15);
    }
  }
}
