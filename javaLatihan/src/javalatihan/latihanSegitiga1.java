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
public class latihanSegitiga1 {

    public static void main(String[] args) {

        int i, n, j;
        Scanner input = new Scanner(System.in);
 
        n = input.nextInt();

        for (i = 0; i <= n; i++) {
            for(j=0; j<i; j++){
                
                System.out.print("*");
            }
            System.out.println("");
        }

    }

}
