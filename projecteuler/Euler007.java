import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static final int MAX = 500001;

  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    int[] sieve = new int[MAX];
    int i;
    int j;
    sieve[0] = 1;
    sieve[1] = 1;
    for (i = 2; i < MAX; i++) {
      sieve[i] = 0;      
    }
    List<Integer> primes = new ArrayList<Integer>();
    primes.add(1);
    int primesCount = 0;
    for (int k = 2; k < MAX && primesCount < 40001; k++) {
      if (sieve[k] == 0){
        primesCount += 1;
        primes.add(k);
        if (k < 707) {
          for(j = k * k; j < MAX; j += k) {
            sieve[j] = 1;
          }
        }
      }
    }

    int t = scanner.nextInt();
    int n;
    for (i = 0; i < t; i++) {
      System.out.println(primes.get(scanner.nextInt()));
    }
  }
}
