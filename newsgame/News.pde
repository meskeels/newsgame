import java.util.*;
import java.io.File;
public class News{
  
  private ArrayList<String> nouns = new ArrayList<String>();
  private ArrayList<String> verbs = new ArrayList<String>();
  private ArrayList<String> buzzwords = new ArrayList<String>();
  private Scanner read;
  private File nounF = new File("C:\\Users\\Mason Skeels\\Documents\\Processing\\newsgame\\data\\nounF.txt");
  private File verbF = new File("C:\\Users\\Mason Skeels\\Documents\\Processing\\newsgame\\data\\verbF.txt");
  private File buzzwordF = new File("C:\\Users\\Mason Skeels\\Documents\\Processing\\newsgame\\data\\buzzwordF.txt");
  void news(){
    
    
  }
  void setNouns(){
     try {

        read = new Scanner(nounF);

        while (read.hasNextLine()) {
            String i = read.nextLine();
            System.out.println(i);
            nouns.add(i);
        }
        read.close();
    } 
    catch (IOException e) {
        e.printStackTrace();
    }
    
  }
  
  void setVerbs(){
    try {

        read = new Scanner(verbF);

        while (read.hasNextLine()) {
            String i = read.nextLine();
            System.out.println(i);
            verbs.add(i);
        }
        read.close();
    } 
    catch (IOException e) {
        e.printStackTrace();
    }
    
  }
    
  void setBuzzWords(){
    try {

        read = new Scanner(buzzwordF);

        while (read.hasNextLine()) {
            String i = read.nextLine();
            System.out.println(i);
            buzzwords.add(i);
        }
        read.close();
    } 
    catch (IOException e) {
        e.printStackTrace();
    }
    
  }
    
  
  
  
  String generate(){
    String n = buzzwords.get((int)random(0,buzzwords.size())) + " " + nouns.get((int)random(0,nouns.size())) + " " + verbs.get((int)random(0,verbs.size())) + " " + buzzwords.get((int)random(0,buzzwords.size())) + " " + nouns.get((int)random(0,nouns.size()));
    return n;
  }
}