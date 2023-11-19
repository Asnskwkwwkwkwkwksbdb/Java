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
public class tukarValue {

    public static void siwthValue(int a, int b) {
        int temp = a;
        a = b;
        b = temp;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Masukkan angka pertama (a): ");
        int a = scanner.nextInt();

        System.out.print("Masukkan angka kedua (b): ");
        int b = scanner.nextInt();

        System.out.println("Sebelum pertukaran:");
        System.out.println("a = " + a);
        System.out.println("b = " + b);

        siwthValue(a, b); 

        System.out.println("Setelah pertukaran:");
        System.out.println("a = " + a);
        System.out.println("b = " + b);
    }

}
