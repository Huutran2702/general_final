package fa.training.repository;

import javax.persistence.Id;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entities.SuDungDichVu;

public interface SuDungDichVuRepository extends JpaRepository<SuDungDichVu, Id> {

}
