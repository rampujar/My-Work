
import java.util.Arrays;

public class MyArrayList<E> implements MyCollection<E>{
	
	static final int INITIAL_CAPACITY = 10;
	int size = 0;
	int capacity= 0;
	E[] myData;
	
	@SuppressWarnings("unchecked")
	public MyList() {
		capacity = INITIAL_CAPACITY;
		myData = (E[]) new Object[capacity];
	}

	public void add(E e) {
		if(size < capacity) {
			myData[size++] = e;
		} else {
			resize();
			myData[size++] = e;
		}
	}

	private void resize() {
		capacity = capacity * 2;
		myData = Arrays.copyOf(myData, capacity);
	}

	public boolean remove(int idx) {
		boolean addFlag = false;
		if(idx == -1 || idx > size) {
			throw new ArrayIndexOutOfBoundsException();
		}
		for(int i= idx+1; i< size; i++) {
			myData[i-1] = myData[i];
		}
		size--;
		return addFlag;
	}

	public void add(int idx, E e) {
		if(idx > size) {
			throw new ArrayIndexOutOfBoundsException();
		}
		for(int i = size; i>idx; i--) {
			myData[i] = myData[i-1];
		}
		myData[idx] = e;
		size++;
	}

	public E get(int idx) {
		if(INITIAL_CAPACITY == -1 || idx > size) {
			throw new ArrayIndexOutOfBoundsException();
		}
		return (E) myData[idx];
	}

	public int size() {
		return size;
	}

	public String toString() {
		String s = "";
		s += "["+myData[0];
		for(int i=1; i< size; i++) {
			s += ","+myData[i];
		}
		s += "]";
		return s;
	}
}

