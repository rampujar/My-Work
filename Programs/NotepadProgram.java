/*
  This Program demonstrates how notepad works when the max line exceeds, the word wrap will happen
*/
public class NotePadProgram {
    public static void main(String args[]) {
       String ip = "I am a Software Engineer with Five Years of Experience in IT Domain";
       String ipArray[] = ip.split(" ");
       StringBuilder br = new StringBuilder();
       int max = 20;
       int counter = max;
       for(int i=0; i< ipArray.length; i++){
           String letter = ipArray[i];
           int letterLen = letter.length();
           if(counter >= letterLen){
               br.append(letter).append(" ");
               counter = counter - (letterLen+1);
               //System.out.println("letter "+br.toString()+" count "+counter);
           } else{
               br.append("\n").append(letter).append(" ");
               counter = max-(letterLen+1);
              // System.out.println("letter break "+br.toString()+" count "+counter);
           }
       }
       System.out.println(br.toString());
    }
}
