package fa.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fa.training.entities.DichVu;
import fa.training.entities.SuDungDichVu;
import fa.training.service.DichVuService;
import fa.training.service.KhachHangService;
import fa.training.service.SuDungDichVuService;

@Controller
@RequestMapping("/dichvu")
public class DichVuController {

	@Autowired
	private DichVuService dichVuService;
	
	@Autowired 
	private KhachHangService khachHangService;
	
	@Autowired
	private SuDungDichVuService suDungDichVuService;
	
	@GetMapping("/listdichvu")
	public String doListDichVuPage(@RequestParam(name="pageNo",required = false,defaultValue = "0") String pageNo,Model model) {
		int pageSize = 5;
		int pageNumber = Integer.parseInt(pageNo);
		Page<DichVu> dichVus = dichVuService.listDichVu(pageNumber, pageSize);
		int pageTotal = dichVus.getTotalPages();
		model.addAttribute("listDichVu", dichVus.getContent());
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
		return "listDichVu";
	}
	
	@GetMapping("/taomoi")
	public String doAddDichVuPage(Model model) {
		model.addAttribute("dichVu", new DichVu());
		return "taoMoiDichVu";
	}
	
	@PostMapping("/taomoi")
	public String addNewDichVu(@ModelAttribute("dichVu") DichVu dichVu) {
		dichVuService.save(dichVu);
		return "redirect:/dichvu/listdichvu";
	}
	
	@GetMapping("/edit/{maDV}")
	public String doEditDichVuPage(@PathVariable("maDV") String maDV,Model model) {
		DichVu dichVu = dichVuService.findById(maDV);
		model.addAttribute("dichVu", dichVu);
		return "updateDichVu";
	}
	
	@PostMapping("/edit/submit")
	public String updateDichVu(@ModelAttribute("dichVu") DichVu dichVu) {
		dichVuService.save(dichVu);
		return "redirect:/dichvu/listdichvu";
	}
	
	@GetMapping("/delete/{maDV}")
	public String deleteDichVu(@PathVariable("maDV") String maDV,Model model) {
		dichVuService.deleteDV(maDV);
		return "redirect:/dichvu/listdichvu";
	}
	
	@GetMapping("/search")
	public String searchDichVu(@RequestParam("key") String key,@RequestParam(name="pageNo",required = false,defaultValue = "0") String pageNo,Model model) {
		int pageSize = 5;
		int pageNumber = Integer.parseInt(pageNo);
		Page<DichVu> dichVus = dichVuService.search(key,pageNumber, pageSize);
		int pageTotal = dichVus.getTotalPages();
		model.addAttribute("listDichVu", dichVus.getContent());
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
		model.addAttribute("key","key="+key+"&" );
		return "listDichVu";
	}
	
	@GetMapping("/dangkysudungdichvu")
	public String doDangKySuDungDichVuPage(Model model) {
		model.addAttribute("dangkysudungdichvu", new SuDungDichVu());
		model.addAttribute("danhSachKhachHang", khachHangService.listAllKhachHang());
		model.addAttribute("danhSachDichVu", dichVuService.findAll());
		return "dangkysudungdichvu";
	}
	
	@PostMapping("/dangkysudungdichvu")
	public String register(@ModelAttribute("dangkysudungdichvu") SuDungDichVu suDungDichVu,BindingResult bindingResult) {
		System.out.println(suDungDichVu.getId().getNgaySuDung());
		suDungDichVuService.save(suDungDichVu);
		return "redirect:/dichvu/dangkysudungdichvu";
	}
	
	
}
