package fa.training.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name="KHACHHANG")

public class KhachHang {
	
	@Id
	@Column(name = " MaKH")
	private String maKH;
	
	@Column(name="TenKH")
	private String tenKH;
	
	@Column(name="DiaChi")
	private String diaChi;
	
	@Column(name="SoDienThoai")
	private String soDienThoai;
	
	@Column(name="DiaChiEmail")
	private String diaChiEmail;
	
	@OneToMany(mappedBy = "maKH", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<SuDungDichVu> danhSachSuDungDichVu = new HashSet<>();
	
	@OneToMany(mappedBy = "maKH", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private Set<SuDungMay> danhSachSuDungMay = new HashSet<>();
}
