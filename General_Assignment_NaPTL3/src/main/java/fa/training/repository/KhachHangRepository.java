package fa.training.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import fa.training.entities.KhachHang;

public interface KhachHangRepository extends JpaRepository<KhachHang, String> {
	
	  	@Modifying
	    @Query(value = "SELECT k.MaKH , k.TenKH,m.MaMay ,m.ViTri ,m.TrangThai , s.NgayBatDauSuDung  ,s.GioBatDauSuDung ,s.ThoiGianSuDung,s2.MaDV \n" +
	            ",s2.NgaySuDung ,s2.GioSuDung ,s2.SoLuong,(d.DonGia*s2.SoLuong) as TongTien FROM KHACHHANG k INNER JOIN SUDUNGMAY s ON s.MaKH = k.MaKH \n" +
	            "INNER JOIN MAY m ON m.MaMay = s.MaMay \n" +
	            "INNER JOIN SUDUNGDICHVU s2 ON s2.MaKH = k.MaKH \n" +
	            "INNER JOIN DICHVU d ON d.MaDV = s2.MaDV ",nativeQuery = true)
	    List<Object[]> getAllKhachHang();

}
