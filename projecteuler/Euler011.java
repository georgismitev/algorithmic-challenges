import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    int[][] grid = new int[20][20];
    int i, j, l, r, max = -1, hproduct, vproduct, rd, ld;

    for (i = 0; i < 20; i++) {
      for (j = 0; j < 20; j++) {
        grid[i][j] = scanner.nextInt();
      }
    }

    for (i = 2; i <= 18; i++) {
      for (j = 2; j <= 18; j++) {
        for(l = -2; l <= 1; l++) {
          hproduct = 1;
          vproduct = 1;
          for(r = -2; r <= 1; r++) {
            hproduct *= grid[i + l][j + r];
          }
          for(r = -2; r <= 1; r++) {
            vproduct *= grid[j + r][i + l];
          }
          if (hproduct > vproduct && hproduct > max) {
            max = hproduct;
          }
          if (vproduct > hproduct && vproduct > max) {
            max = vproduct;
          }
        }
        rd = grid[i - 2][j - 2] * grid[i - 1][j - 1] * grid[i][j] * grid[i + 1][j + 1];
        ld = grid[i - 2][j + 1] * grid[i - 1][j] * grid[i][j - 1] * grid[i + 1][j - 2];
        if (rd > ld && rd > max) {
          max = rd;
        }
        if (ld > rd && ld > max) {
          max = ld;
        }
      }
    }
    System.out.println(max);
  }
}
