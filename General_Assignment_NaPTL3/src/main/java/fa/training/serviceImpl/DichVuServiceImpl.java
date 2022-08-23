package fa.training.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import fa.training.entities.DichVu;
import fa.training.repository.DichVuRepository;
import fa.training.service.DichVuService;

@Service
public class DichVuServiceImpl implements DichVuService {
	@Autowired
	private DichVuRepository dichVuRepository;

	@Override
	public Page<DichVu> listDichVu(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		 Pageable pageable = PageRequest.of(pageNo,pageSize);
		return dichVuRepository.findAll(pageable);
	}

	@Override
	public void save(DichVu dichVu) {
		// TODO Auto-generated method stub
		dichVuRepository.save(dichVu);
	}

	@Override
	public DichVu findById(String maDV) {
		// TODO Auto-generated method stub
		return dichVuRepository.findById(maDV).orElse(null);
	}

	@Override
	public void deleteDV(String maDV) {
		// TODO Auto-generated method stub
		dichVuRepository.deleteById(maDV);
	}

	@Override
	public Page<DichVu> search(String key, int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		 Pageable pageable = PageRequest.of(pageNo,pageSize);
		return dichVuRepository.search(key, pageable);
	}

	@Override
	public List<DichVu> findAll() {
		// TODO Auto-generated method stub
		return dichVuRepository.findAll();
	}

}
