package fa.training.entities;

import lombok.*;

import java.math.BigInteger;
import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class DetailCustomer {
	private String maKhachHang;
	private String tenKhachHang;
	private String maMay;
	private String viTri;
	private String trangThai;
	private LocalDate ngayBatDauSuDungMay;
	private LocalTime gioBatDauSuDungMay;
	private int thoiGianSuDungMay;
	private String maDichVu;
	private LocalDate ngaySuDung;
	private LocalTime gioSuDung;
	private int soLuong;
	private Long tongTien;

	public static DetailCustomer parse(Object[] obj) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_TIME;
		DetailCustomer detailCustomer = new DetailCustomer();
		detailCustomer.setMaKhachHang((String) obj[0]);
		detailCustomer.setTenKhachHang((String) obj[1]);
		detailCustomer.setMaMay((String) obj[2]);
		detailCustomer.setViTri((String) obj[3]);
		detailCustomer.setTrangThai((String) obj[4]);
		detailCustomer.setNgayBatDauSuDungMay(((Date) obj[5]).toLocalDate());
		detailCustomer.setGioBatDauSuDungMay(((Time) obj[6]).toLocalTime());
		detailCustomer.setThoiGianSuDungMay((int) obj[7]);
		detailCustomer.setMaDichVu((String) obj[8]);
		detailCustomer.setNgaySuDung(((Date) obj[9]).toLocalDate());
		detailCustomer.setGioSuDung(((Time) obj[10]).toLocalTime());
		detailCustomer.setSoLuong((int) obj[11]);
		detailCustomer.setTongTien(((BigInteger) obj[12]).longValue());
		return detailCustomer;
	}
}