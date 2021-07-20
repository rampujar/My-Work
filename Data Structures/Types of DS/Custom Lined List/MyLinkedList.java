import java.util.Stack;

public class MyLinkedList<E> implements MyCollection<E> {
	
	Node<E> head;
	int size = 0;
	int capacity = 0;
	static final int MAX_CAPACITY = 10;
	
	public void add(E e) {
		if(null == head) {
			head = new Node<>(e);
		} else {
			Node<E> temp = head;
			while(null != temp.next) {
				temp = temp.next;
			}
			temp.next = new Node<>(e);
		}
	}

	public boolean remove(int index) {
		if(index == 0) {
			head = head.next;
			return true;
		}
		Node<E> temp = head;
		for(int i=0; i< index-1; i++) {
			temp = temp.next;
		}
		Node<E> firstHalf = temp;
		Node<E> secondHalf = temp.next.next;
		firstHalf.next = secondHalf;
		return false;
	}

	public void add(int index, E e) {
		Node<E> temp = head;
		Node<E> newNode = new Node<>(e);
		for(int i=0; i< index-1; i++) {
			temp = temp.next;
		}
		Node<E> firstHalf = temp;
		firstHalf.next = newNode;
		newNode.next = temp.next.next;
		head = firstHalf;
	}

	public E get(int index) {
		Node<E> temp = head;
		for(int i=0; i<index; i++) {
			temp = temp.next;
		}
		return temp.data;
	}

	public int size() {
		return 0;
	}
	
	public String toString() {
		Node<E> temp = head;
		String s = "["+temp.data;
		while(null != temp.next) {
			temp = temp.next;
			s += ","+temp.data;
		}
		s += "]";
		return s;
	}
}

