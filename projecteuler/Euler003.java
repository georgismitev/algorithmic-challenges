import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Euler003 {
  public static final int MAX_PRIMES = 1000001;

  public static ArrayList<Integer> generatePrimes() {
    ArrayList<Integer> primes = new ArrayList<Integer>();

    int[] array = new int[MAX_PRIMES];
    array[0] = 1;
    array[1] = 1;

    for (int i = 2; i < MAX_PRIMES; i++) {
      if (array[i] == 0) {
        primes.add(i);
        if (i <= 1000) {
          int j = i * i;
          while (j < MAX_PRIMES) {
            array[j] = 1;
            j += i;
          }
        }
      }
    }

    return primes;
  }

  public static long largestPrimeFactor(long n, ArrayList<Integer> primes) {
    long max = 0;
    for (int i = 0; i < primes.size(); i++) {
      if (n % primes.get(i) == 0) {
        max = primes.get(i);
        while (n % primes.get(i) == 0) {
          n /= primes.get(i);
        }
        if (n == 1) {
          break;
        }
      }
    }

    return (n > 1) ? n : max;
  }

  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    ArrayList<Integer> primes = generatePrimes();
    int t = scanner.nextInt();
    for (int i = 0; i < t; i++) {
      long n = scanner.nextLong();
      System.out.println(largestPrimeFactor(n, primes));
    }
  }
}
