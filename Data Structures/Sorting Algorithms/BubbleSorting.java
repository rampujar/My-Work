package sorting;

/**
 * Program to sort the Array using Bubble Sort
 * @author Sriram Pujar
 *
 */
public class BubbleSorting {
	/**
	 * Function to sort the array
	 * @param arr
	 */
	public static void bSort(int[] arr) {
		int n = arr.length;
		for(int i=0; i<n-1; i++) {
			for(int j=0; j<n-i-1; j++) {
				if(arr[j+1] < arr[j]) {
					int temp = arr[j+1];
					arr[j+1] = arr[j];
					arr[j] = temp;
				}
			}
		}
	}
	
	public static void main(String[] args) {
		int[] arr = {9,2,8,1,4,10};
		bSort(arr);
		for(int a : arr) {
			System.out.print(a+"\t");
		}
	}

}
