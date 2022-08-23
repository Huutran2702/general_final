package fa.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fa.training.entities.KhachHang;
import fa.training.service.KhachHangService;

@Controller
public class DichVuController {
@Autowired
private KhachHangService khachHangService;

@RequestMapping("/listKhachHang")
public ModelAndView danhSachKH() {
	ModelAndView mav= new ModelAndView("listKhachHang");
	List<KhachHang> listKH= khachHangService.listAllKhachHang();
	mav.addObject("listKH",listKH);
	return mav;
}
}
