package fa.training.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="DICHVU")
public class DichVu {
	
	@Id
	@Column(name="MaDV")
	private String maDV;
	
	@Column(name="TenDV")
	private String tenDV;
	
	@Column(name="DonViTinh")
	private String donViTinh;
	
	@Column(name="DonGia", nullable = false)
	private String donGia;
	
	@OneToMany(mappedBy = "maDV")
	private List<SuDungDichVu> danhSachSuDungDichVu;
}
