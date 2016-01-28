import java.io.*;
import java.util.*;

public class JavaStringToken {
  public static boolean isAlphabet(char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
  }

  public static void mainSolution1(String[] args) 
  {
    Scanner scan = new Scanner(System.in);
    String s = scan.nextLine();
    ArrayList<String> words = new ArrayList<String>();
    int i = 0;
    String currentWord = "";
    while (i < s.length()) {
      if (isAlphabet(s.charAt(i))) {
        currentWord += s.charAt(i);
      } else {
        if (currentWord.length() > 0) {
          words.add(currentWord);
          currentWord = "";
        }
      }
      i += 1;
    }
    if (currentWord.length() > 0) {
      words.add(currentWord);
      currentWord = "";
    }
    System.out.println(words.size());
    for (String word: words) {
      System.out.println(word);
    }
  }

  public static void main(String[] args) 
  {
    Scanner scan = new Scanner(System.in);
    String s = scan.nextLine().trim();
    if (s.length() == 0)
      System.out.println(0);
    else {
      String delimiters = "[ !,?._'@]+";
      String[] tokens = s.split(delimiters);
      System.out.println(tokens.length);
      for (String word: tokens) {
        System.out.println(word);
      }
    }
  }
}
