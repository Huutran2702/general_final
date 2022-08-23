package fa.training.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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

	@Override
	public Page<Object[]> getAllKhachHang(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		 Pageable pageable = PageRequest.of(pageNo,pageSize);
		 List<Object[]> list = khachHangRepository.getAllKhachHang();
		 Page<Object[]> pages = new PageImpl<Object[]>(list,pageable,list.size()); 
		return pages;
	}

}
