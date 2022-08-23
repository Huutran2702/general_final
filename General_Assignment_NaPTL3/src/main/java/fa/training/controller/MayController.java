package fa.training.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fa.training.entities.May;
import fa.training.service.MayService;

@Controller
public class MayController {
	@Autowired
	private MayService mayService;

	@RequestMapping("/listmay")
	public ModelAndView danhSachMay() {
		ModelAndView mav = new ModelAndView("listmay");
		List<May> listMay = mayService.listAllMay();
		mav.addObject("listMay", listMay);
		return mav;
	}

	@RequestMapping("/taoMoiMay")
	public String taoMoiMay(Map<String, Object> model) {
		May may = new May();
		model.put("maMay", may);
		return "TaoMoiMay";// trang jsp
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String luuMay(@ModelAttribute("maMay") May may) {
		mayService.save(may);
		return "redirect:/listmay";
	}
	
	@GetMapping("/update")
	public String update(ModelMap modelMap, @RequestParam("maMay") String maMay) {
		May may=mayService.findById(maMay);
		modelMap.addAttribute("maMay",may);
		return "updateMay";
	}

	@GetMapping("/delete")
	public String delete(ModelMap model, @RequestParam("maMay") String maMay) {
		mayService.deleteById(maMay);
		return "redirect:/listmay";
	}
	
	
}
