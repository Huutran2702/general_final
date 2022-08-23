package fa.training.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entities.KhachHang;
import fa.training.repository.KhachHangRepository;
import fa.training.service.KhachHangService;

@Service
public class KhachHangServiceImpl  implements KhachHangService{
@Autowired
private KhachHangRepository khachHangRepository;
	@Override
	public List<KhachHang> listAllKhachHang() {
		return (List<KhachHang>) khachHangRepository.findAll();
	}

	@Override
	public void save(KhachHang khachHang) {
		khachHangRepository.save(khachHang);
		
	}

	@Override
	public KhachHang findById(String maKH) {
		Optional<KhachHang> result= khachHangRepository.findById(maKH);
		return result.get();
	}

	@Override
	public void deleteMaKH(String maKH) {
		khachHangRepository.deleteById(maKH);
		
	}

}
