import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static final int MAX = 41;

  public static int[] esieve() {
    int[] sieve = new int[MAX];
    sieve[0] = 1;
    sieve[1] = 1;

    for (int i = 2; i < MAX; i++) {
      if (sieve[i] == 0) {
        for (int j = i * i; j < MAX; j += i) {
          sieve[j] = 1;
        }
      }
    }

    return sieve;
  }

  public static void main(String[] args) {
    int total;
    int[] sieve = esieve();
    Scanner scanner = new Scanner(System.in);
    int t = scanner.nextInt();
    int n;
    int j;
    for(int k = 0; k < t; k++) {
      total = 1;
      n = scanner.nextInt();
      for(int i = 2; i <= n; i++) {
        if (sieve[i] == 0) {
          for (j = i; j <= n;) {
            j *= i;
          }
          j /= i;
          total *= j;
        }
      }
      System.out.println(total);
    }
  }
}
