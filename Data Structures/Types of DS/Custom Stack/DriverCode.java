public class CustomClass {
	public static void main(String[] args) {
		MyStack<Integer> s = new  MyStack<>();
		s.push(1);
		s.push(2);
		s.push(3);
		s.push(4);
		s.push(5);
		s.push(6);
		s.push(7);
		System.out.println(s.size());
		System.out.println(s);
	}
}
