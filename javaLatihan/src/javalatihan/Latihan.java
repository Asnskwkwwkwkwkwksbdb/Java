/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javalatihan;

import java.util.ArrayList;
import java.util.Scanner;    
import java.util.StringJoiner;

/**
 *
 * @author Acer
 */
public class Latihan {

    public static void main(String[] args) {
   
        Scanner input = new Scanner(System.in);

        ArrayList<Integer> array = new ArrayList<>();

        boolean lanjut = true;

        while (lanjut) { 
            System.out.print("Masukkan Angka Yang Akan Disimpan : ");
            if (input.hasNextInt()) {
                int inputAngka = input.nextInt(); 
                array.add(inputAngka);
                int size = array.size();
                String arrayKonvertToString = array.toString();
                String potongKomaKurungSiku = arrayKonvertToString.replaceAll("[\\[\\],]",""); 
                int total = 0;
                for(int i = 0; i<array.size(); i++){
                    total += array.get(i);
                }  
                
                StringJoiner join = new StringJoiner("+");
                for(Integer data : array){
                    join.add(data.toString());
                }
                
                String result = join.toString();
                
                System.out.println("Sukses Total Data = " + size);
                System.out.println("Data Yang Disimpan adalah : "+array ); 
                System.out.println("Data Yang Telah Dipisahkan Oleh Koma dan Kurung Siku: "+potongKomaKurungSiku);
                System.out.println("Menambahkan Tanda Plus: "+result); 
                System.out.println("Data Yang Telah Dijumlahkan: "+total);
                System.out.println("Apakah Ingin Lanjut Menyimpan Data (ya/tidak) ? ");
                String inputLanjut = input.next().toLowerCase();
                
                if (inputLanjut.equals("ya")) {
                    continue;
                } else { 
                    System.out.println("Program sudah selesai ==^_^== terimakasih ");
                    lanjut = false;
                }

            }

        }

    }
}
