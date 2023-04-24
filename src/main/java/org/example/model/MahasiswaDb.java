package org.example.model;

import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;
import java.text.DateFormat;
import java.time.LocalDate;


@Entity
@Table(name = "mahasiswa", schema = "mgr")

public class MahasiswaDb {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long nim;

    @Column
    private int jumlah_sks;

    @Column
    private String jurusan;

    @Column
    private String kelas;

    @Column
    private String nama;

    @Column
    private boolean status;

    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private LocalDate tanggal_lahir;

//    @Column
//    private String author;
//
//    @Column
//    private String book_name;
//
//    @Column
//    private Long price;

    public MahasiswaDb() {

    }



    public Long getNim() {
        return nim;
    }

    public void setNim(Long nim) {
        this.nim = nim;
    }

    public int getJumlah_sks() {
        return jumlah_sks;
    }

    public void setJumlah_sks(int jumlah_sks) {
        this.jumlah_sks = jumlah_sks;
    }


    public String getJurusan() {
        return jurusan;
    }

    public void setJurusan(String jurusan) {
        this.jurusan = jurusan;
    }


    public String getKelas() {
        return kelas;
    }

    public void setKelas(String kelas) {
        this.kelas = kelas;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }


    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }


    public LocalDate getTanggal_lahir() {
        return tanggal_lahir;
    }

    public void setTanggal_lahir(LocalDate tanggal_lahir) {
        this.tanggal_lahir = tanggal_lahir;
    }

//
//    public String getAuthor() {
//        return author;
//    }
//
//    public void setAuthor(String author) {
//        this.author = author;
//    }
//
//
//    public String getBook_name() {
//        return book_name;
//    }
//
//    public void setBook_name(String book_name) {
//        this.book_name = book_name;
//    }
//
//
//    public int getPrice() {
//        return price;
//    }
//
//    public void setPrice(int price) {
//        this.price = price;
//    }


}
