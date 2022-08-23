package fa.training.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.training.entities.KhachHang;

public interface KhachHangRepository extends JpaRepository<KhachHang, String> {

}
