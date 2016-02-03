import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    int t = scanner.nextInt();
    long n, sumOfSquares, squareOfTheSum;

    for(int i = 0; i < t; i++) {
      n = scanner.nextInt();
      sumOfSquares = (n * (n + 1) * (2 * n + 1)) / 6;
      squareOfTheSum = ((n * (n + 1)) * (n * (n + 1))) / 4;
      System.out.println(squareOfTheSum - sumOfSquares);
    }
  }
}
