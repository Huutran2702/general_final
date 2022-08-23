package fa.training.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entities.SuDungDichVu;
import fa.training.entities.SuDungDichVu.Id;

public interface SuDungDichVuRepository extends JpaRepository<SuDungDichVu, Id> {

}
