
/**
 * Program to sort the Array using insertion sort
 * @author 00004711
 *
 */
public class InsertionSort {
	
	/**
	 * Function to sort the array
	 * @param arr
	 */
	public static void insertionSort(int[] arr) {
		for(int i=1; i<arr.length; i++) {
			int temp = arr[i];
			int j = i-1;
			while(j >=0 && arr[j] > temp) {
				arr[j+1] = arr[j];
				j--;
			}
			arr[j+1] = temp;
		}
	}
	
	public static void main(String[] args) {
		int[] arr = {10,1,9,2,8,3};
		insertionSort(arr);
		for(int a : arr) {
			System.out.print(a+"\t");
		}
		
	}
}
