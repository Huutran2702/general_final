package fa.training.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;

import fa.training.entities.DichVu;

public interface DichVuService {
	Page<DichVu> listDichVu(int pageNo, int pageSize);
	List<DichVu> findAll();

	void save(DichVu dichVu);

	DichVu findById(String maDV);

	void deleteDV(String maDV);
	
	Page<DichVu> search(String key,int pageNo, int pageSize);
}
