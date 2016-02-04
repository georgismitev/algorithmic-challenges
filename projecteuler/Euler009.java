import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static final int MAX = 3001;

  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    int i, n, product, maxProduct, a, b, c;
    int[] squares = new int[MAX];
    
    for(i = 1; i < MAX; i++) {
      squares[i] = i * i;
    }

    int t = scanner.nextInt();
    for (int k = 0; k < t; k++) {
      maxProduct = -1;
      n = scanner.nextInt();
      for (a = 1; a < n / 3 + 1; a++) {
        if (2 * n - 2 * a == 0) {
          continue;
        }
        b = (squares[n] - 2 * n * a) / (2 * n - 2 * a);
        c = n - a - b;
        if (c > 0 && c > b && c > a && b > a && squares[a] + squares[b] == squares[c]) {
          product = a * b * c;
          if (product > maxProduct) {
            maxProduct = product;
          }
        }
      }
      System.out.println(maxProduct);
    }
  }
}
