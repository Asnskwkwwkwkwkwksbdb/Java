/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javalatihan;

/**
 *  
 * @author Acer
 */
public class arrayLatihan {

    public static void main(String[] args) {
        int array[] = {1, 5, 2, 7, 3, 30};

        System.out.print("orignal array : ");
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }

        sortAsc(array); 
        sortDesc(array);
 
    }

    private static void sortAsc(int array[]) {
        int temp = 0;
        for (int i = 0; i < array.length; i++) {
            for (int j = i + 1; j < array.length; j++) {
                if (array[j] < array[i]) {
                    temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                }
            }
        }

        System.out.print("\n result sorting ascending : ");
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
    }

    private static void sortDesc(int array[]) {
        int temp = 0;
        for (int i = 0; i < array.length; i++) {
            for (int j = i + 1; j < array.length; j++) {
                if (array[j] > array[i]) {
                    temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                }
            }
        }
        System.out.print("\n result sorting DESCENDING : ");
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
}
}
