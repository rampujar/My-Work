
public interface MyCollection<E> {
	public void add(E e);
	public boolean remove(int index);
	public void add(int index, E e);
	public E get(int index);
	public int size();
}
