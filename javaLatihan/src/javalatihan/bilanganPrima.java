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
public class bilanganPrima {

    public static void main(String[] args) {
        int inputBilanganPrima;
        String jawabPertanyaan;
        Scanner input = new Scanner(System.in);
        System.out.println("=====================Bilangan Prima=====================");
        if(input.hasNextInt()){
            
        }
        boolean lanjutProses = true;
        do {
            System.out.print("Masukkan Bilangan Bulat: ");
            if (input.hasNextInt()) {    
                inputBilanganPrima = input.nextInt();

                if (inputBilanganPrima >= 0) {
                    menampilkanBilanganPrima(inputBilanganPrima);
                } else {
                    System.out.println("Inputan tidak sesuai, harap masukkan bilangan bulat positif.\n");
                    continue;    
                }
            } else {
                System.out.println("Inputan tidak sesuai, harap masukkan bilangan bulat positif.\n");
                input.next();  
                continue;  
            }

            System.out.print("Apakah ingin memulai dari awal program (ya/tidak): ");
            jawabPertanyaan = input.next().toLowerCase();

            if (jawabPertanyaan.equals("tidak")) {
                lanjutProses = false;
            }

        } while (lanjutProses);

        System.out.println("Program berakhir.");
        input.close();

    }

    private static void menampilkanBilanganPrima(int totalBilanganPrima) {

        int i;
        for (i = 2; i <= totalBilanganPrima; i++) {
            if (isBilanganPrima(i)) {
                System.out.print(i + " ");
            }

        }
        System.out.println();
    }

    private static boolean isBilanganPrima(int checkBilanganPrima) {
        int i;
        if (checkBilanganPrima <= 1) {
            return false;
        } else {
            for (i = 2; i <= Math.sqrt(checkBilanganPrima); i++) {
                if (checkBilanganPrima % i == 0) {
                    return false;
                }
            }
        }

        return true;
    }
}
