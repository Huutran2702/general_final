package fa.training.service;

import java.util.List;

import fa.training.entities.KhachHang;
import fa.training.entities.SuDungDichVu;

public interface SuDungDichVuService {
	List<SuDungDichVu> listAllKhachHang();

	void save(SuDungDichVu suDungDichVu);

}
