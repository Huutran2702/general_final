package fa.training.repository;

import javax.persistence.Id;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entities.SuDungMay;

public interface SuDungMayRepository extends JpaRepository<SuDungMay, Id>{

}
