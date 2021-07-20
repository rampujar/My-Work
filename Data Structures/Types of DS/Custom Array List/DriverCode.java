import java.util.LinkedList;
import java.util.List;

public class CustomClass {
	public static void main(String[] args) {
		MyList<String> m = new MyList<>();
		m.add("a");
		m.add("b");
		m.add("c");
		m.add("d");
		m.add("e");
		m.add("a");
		m.add("b");
		m.add("c");
		System.out.println(m);
		System.out.println("----------");
		System.out.println(m.get(2));
		
		
	}
}
