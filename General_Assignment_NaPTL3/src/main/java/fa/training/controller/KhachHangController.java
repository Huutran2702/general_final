package fa.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fa.training.entities.KhachHang;
import fa.training.service.KhachHangService;

@Controller
public class KhachHangController {
@Autowired
private KhachHangService khachHangService;

@RequestMapping("/listKhachHang")
public ModelAndView danhSachKH() {
	ModelAndView mav= new ModelAndView("listKhachHang");
	List<KhachHang> listKH= khachHangService.listAllKhachHang();
	mav.addObject("listKH",listKH);
	return mav;
}



@GetMapping("danhSachKhachHang")
public String doDanhSachKHPage(@RequestParam(name="pageNo",required = false,defaultValue = "0") String pageNo,Model model) {
	int pageSize = 5;
	int pageNumber = Integer.parseInt(pageNo);
	Page<Object[]> pages = khachHangService.getAllKhachHang(pageNumber, pageSize);
	int pageTotal = pages.getTotalPages();
	model.addAttribute("danhSachKhachHang",pages.getContent() );
	model.addAttribute("totalPage", pageTotal);
	if(pageNumber==0) {
		model.addAttribute("pre", 0);
	} else {
		model.addAttribute("pre", pageNumber-1);
	}
	
	if(pageNumber==pageTotal-1) {
		model.addAttribute("next", pageNumber);
	}else {
		model.addAttribute("next", pageNumber+1);
	}
	return "khachHangSuDungDV";
}
}
