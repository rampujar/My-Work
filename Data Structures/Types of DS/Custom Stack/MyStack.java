import java.util.Arrays;

public class MyStack<E> {
	static final int MAX_CAP = 5;
	int capacity;
	int size;
	E[] data;
	
	
	@SuppressWarnings("unchecked")
	public CustomStack() {
		capacity = MAX_CAP;
		data = (E[]) new Object[capacity];
	}
	
	public void push(E e) {
		if(size < capacity) {
			data[size++] = e;
		} else {
			resize();
			data[size++] = e;
		}
	}
	
	public E pop() {
		E e = null;
		if(size > 0) {
			size--;
			e = data[size];
		}
		return e;
	}
	
	public E peek() {
		E e = null;
		if(size > 0) {
			e = data[size-1];
		}
		return e;
	}
	
	public void resize() {
		capacity = capacity*2;
		data = Arrays.copyOf(data, capacity);
	}
	
	public String toString() {
		String s = "";
		if(size > 0) {
			s = "["+data[0];
			for(int i=1; i< size; i++) {
				s += ","+data[i];
			}
			s += "]";
		}
		return s;
	}
}

