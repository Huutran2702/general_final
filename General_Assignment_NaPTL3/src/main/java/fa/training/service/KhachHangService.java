package fa.training.service;

import java.util.List;

import org.springframework.data.domain.Page;

import fa.training.entities.KhachHang;

public interface KhachHangService {
	List<KhachHang> listAllKhachHang();

	void save(KhachHang khachHang);

	KhachHang findById(String maKH);

	void deleteMaKH(String maKH);
	
	Page<Object[]> getAllKhachHang(int pageNo , int pageSize);

}
