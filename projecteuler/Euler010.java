import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static final int MAX = 1000001;

  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    int[] sieve = new int[MAX];
    Map<Integer, Long> primeSums = new HashMap<Integer, Long>();
    int t = scanner.nextInt(), k, n, i, j;
    long previousSum = 0L;

    sieve[0] = 1;
    sieve[1] = 1;
    for(i = 2; i < MAX; i++) {
      sieve[i] = 0;
    }

    for (i = 2; i < MAX; i++) {
      if (sieve[i] == 0) {
        primeSums.put(i, previousSum + i);
        previousSum += i;
        if (i <= 1000) {
          for (j = i * i; j < MAX; j += i) {
            sieve[j] = 1;
          }
        }
      } else {
        primeSums.put(i, previousSum);
      }
    }

    for (k = 0; k < t; k++) {
      System.out.println(primeSums.get(scanner.nextInt()));
    }
  }
}
