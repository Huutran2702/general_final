package fa.training.entities;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

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
@Table(name="SUDUNGDICHVU")

public class SuDungDichVu {
	
	@EmbeddedId
	private Id id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "MaKH", referencedColumnName = "MaKH", insertable = false, updatable = false)
	private KhachHang maKH;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "MaDV", referencedColumnName = "MaDV", insertable = false, updatable = false)
	private DichVu maDV ;
	
	@Column(name="SoLuong")
	private int soLuong;
	
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
		
		@Column(name = "MaDV")
		private String maDV;
		
		@Column(name = "NgaySuDung")
		@DateTimeFormat(pattern = "dd/MM/yyyy")
		private LocalDate ngaySuDung;

		@Column(name = "GioSuDung")
		private LocalTime gioSuDung;
		
	}
}
