package fa.training.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "SUDUNGMAY")
public class SuDungMay {
	
	@EmbeddedId
	private Id id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "MaKH", referencedColumnName = "MaKH", insertable = false, updatable = false)
	private KhachHang maKH;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "MaMay", referencedColumnName = "MaMay", insertable = false, updatable = false)
	private May maMay;
	
	
	@Column(name = "ThoiGianSuDung")
	private int thoiGianSuDung;
	
	
	@Setter
	@Getter
	@AllArgsConstructor
	@NoArgsConstructor
	@ToString
	@Embeddable
	public static class Id implements Serializable {

		private static final long serialVersionUID = 1L;
		
		@Column(name = "MaKH")
		private String maKH;
		
		@Column(name = "MaMay")
		private String maMay;
		
		@Column(name = "NgayBatDauSuDung")
		private LocalDate ngayBatDauSuDung;

		@Column(name = "GioBatDauSuDung")
		private LocalTime gioBatDauSuDung;
		
	}
	
}
