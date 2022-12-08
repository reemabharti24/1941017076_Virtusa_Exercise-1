package Problems;

import java.util.*;

public class SumPairs {
	public static void main(String[] args) {
		int Sample[] = { 2, 5, 8, 9, 0, 1, 7, 10 };
		for (int i = 0; i < Sample.length; i++) {
			for (int j = i + 1; j < Sample.length; j++) {
				for (int k = 0; k < Sample.length; k++) {
					if (Sample[i] + Sample[j] == Sample[k]) {
						System.out.println(Sample[i] + " " + Sample[j]);
					}
				}
			}
		}
	}

}
