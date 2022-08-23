package fa.training.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entities.SuDungDichVu;
import fa.training.repository.SuDungDichVuRepository;
import fa.training.service.SuDungDichVuService;

@Service
public class SuDungDichVuServiceImpl implements SuDungDichVuService {

	@Autowired
	private SuDungDichVuRepository suDungDichVuRepository;
	@Override
	public List<SuDungDichVu> listAllKhachHang() {
		// TODO Auto-generated method stub
		return suDungDichVuRepository.findAll();
	}

	@Override
	public void save(SuDungDichVu suDungDichVu) {
		// TODO Auto-generated method stub
		suDungDichVuRepository.save(suDungDichVu);
	}

}
