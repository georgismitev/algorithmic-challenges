import java.io.*;
import java.util.*;

public class JavaAnagrams {
  static boolean isAnagram(String A, String B) {
    int i;
    Hashtable<Character, Integer> map = new Hashtable<Character, Integer>();
    
    for (i = 0; i < A.length(); i++) {
      char key = Character.toLowerCase(A.charAt(i));
      if (!map.containsKey(key)) {
        map.put(key, 1);
      } else {
        int value = (int)map.get(key);
        map.put(key, value + 1);
      }
    }

    for (i = 0; i < B.length(); i++) {
      char key = Character.toLowerCase(B.charAt(i));
      if (!map.containsKey(key)) {
        return false;
      }
      int value = (int)map.get(key);
      map.put(key, value - 1);  
    }

    Iterator<Map.Entry<Character, Integer>> iterator = map.entrySet().iterator();
    while (iterator.hasNext()) {
      Map.Entry<Character, Integer> entry = iterator.next();
      if (entry.getValue() != 0) {
        return false;
      }
    }

    return true;
  }

  public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    String A = sc.next();
    String B = sc.next();

    if(isAnagram(A,B))
      System.out.println("Anagrams");
    else
      System.out.println("Not Anagrams");
  }
}
