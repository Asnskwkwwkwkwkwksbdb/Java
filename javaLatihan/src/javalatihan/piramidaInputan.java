/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javalatihan;

import java.util.Scanner;

/**
 *   
 * @author Acer
 */
public class piramidaInputan { 

    public static void main(String args[]) {
        int total = 0;
        for (int i = 1; i <= 10; i++) {
            total += i;
            for (int j = 1; j <= i; j++) {
                System.out.print(j);
                if (j < i) {
                    System.out.print("+");
                }

            }
            System.out.println("=" + total);
        }

    }

}
