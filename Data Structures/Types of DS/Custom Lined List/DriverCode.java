
public class DriverCode {
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
		System.out.println(m.get(2));
    m.remove(2);
    System.out.println(m);
	}
}
