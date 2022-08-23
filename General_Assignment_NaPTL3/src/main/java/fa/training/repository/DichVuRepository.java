package fa.training.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fa.training.entities.DichVu;

public interface DichVuRepository extends JpaRepository<DichVu, String>{
		Page<DichVu> findAll(Pageable pageable);
		
		@Query("SELECT dv FROM DichVu dv WHERE maDV LIKE %:key% OR tenDV LIKE %:key%"
				+ " OR donViTinh LIKE %:key% OR donGia LIKE %:key%")
		Page<DichVu> search(@Param("key") String key,Pageable pageable);
}
