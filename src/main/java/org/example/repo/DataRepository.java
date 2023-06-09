package org.example.repo;

import org.example.model.MahasiswaDb;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DataRepository extends JpaRepository<MahasiswaDb, Long> {
}
