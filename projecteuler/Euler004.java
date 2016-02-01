import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static boolean threeDigits(int n) {
    return n > 99 && n < 1000;
  }

  public static int palindromeNumber(int n) {
    return (n / 100) * 100000 +
      ((n % 100) / 10) * 10000 +
      (n % 10) * 1000 +
      (n % 10) * 100 +
      ((n % 100) / 10) * 10 +
      n / 100;
  }

  public static boolean threeDigitFactors(int n) {
    int i = 2;
    while (i * i <= n) {
      if (n % i == 0) {
        if (threeDigits(i) && threeDigits(n / i)) {
          return true;
        }
      }
      i += 1;
    }
    return false;
  }

  public static ArrayList<Integer> generatePalindromes() {
    ArrayList<Integer> palindromes = new ArrayList<Integer>();

    for (int i = 101; i < 1000; i++) {
      int palindrome = palindromeNumber(i);
      if (threeDigitFactors(palindrome)) {
        palindromes.add(palindrome);
      }
    }

    return palindromes;
  }

  public static int findPalindrome(int n, ArrayList<Integer> palindromes) {
    int palindrome = 0;
    int s = 0;
    int e = palindromes.size() - 1;
    int m;

    while (s <= e) {
      m = (s + e) >> 1;
      if (palindromes.get(m) < n) {
        palindrome = palindromes.get(m);
        s = m + 1;
      } else {
        e = m - 1;
      }
    }

    return palindrome;
  }

  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    int t = scanner.nextInt();
    int n;
    ArrayList<Integer> palindromes = generatePalindromes();

    for (int i = 0; i < t; i++) {
      n = scanner.nextInt();
      System.out.println(findPalindrome(n, palindromes));
    }
  }
}
