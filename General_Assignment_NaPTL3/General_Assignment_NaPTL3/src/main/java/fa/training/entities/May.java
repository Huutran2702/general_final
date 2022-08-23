package fa.training.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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
@Table(name = "MAY")
public class May {
	
	@Id
	@Column(name="MaMay")
	private String maMay;
	
	@Column(name="ViTri")
	private String viTri;
	
	@Column(name="TrangThai",columnDefinition = "nvarchar(255)")
	private String trangThai;
	
	
	@OneToMany(mappedBy = "maMay", cascade = CascadeType.ALL)
	private List<SuDungMay> danhSachSuDungMay;
}
