package org.example.service;

import org.example.model.MahasiswaDb;
import org.example.repo.DataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class DataService {

    @Autowired
    DataRepository dataRepository;


    public List<MahasiswaDb> getAllDatabaseMahasiswa() {
        List<MahasiswaDb> mahasiswaDbs = new ArrayList<>();
        dataRepository.findAll().forEach(data -> mahasiswaDbs.add(data));
        return mahasiswaDbs;
    }

    public MahasiswaDb getDataMahasiswaById(Long id) {
        return dataRepository.findById(id).get();
    }

    public boolean saveOrUpdateDataMahasiswa(MahasiswaDb mahasiswaDb) {
        MahasiswaDb updateDataMahasiswa = dataRepository.save(mahasiswaDb);

        if(dataRepository.findById(updateDataMahasiswa.getNim()) != null) {
            return true;
        }
        return false;
    }

    public boolean deleteDataMahasiswa(Long nim) {
        dataRepository.deleteById(nim);

        if(dataRepository.findById(nim) != null) {
            return true;
        }
        return false;
    }
}
