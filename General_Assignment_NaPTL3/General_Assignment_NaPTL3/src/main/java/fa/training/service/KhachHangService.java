package fa.training.service;

import java.util.List;

import fa.training.entities.KhachHang;

public interface KhachHangService {
	List<KhachHang> listAllKhachHang();

	void save(KhachHang khachHang);

	KhachHang findById(String maKH);

	void deleteMaKH(String maKH);

}
