package fa.training.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fa.training.entities.May;
import fa.training.repository.MayRepository;
import fa.training.service.MayService;

@Service
public class MayServiceImpl implements MayService{
	@Autowired
	private MayRepository mayRepository;
	

	@Override
	public List<May> listAllMay() {
        return (List<May>) mayRepository.findAll();
	}


	@Override
	public void save(May may) {
		mayRepository.save(may);
	}


	@Override
	public May findById(String maMay) {
		Optional<May> result= mayRepository.findById(maMay);
		return result.get();
	}


	@Override
	public void deleteById(String maMay) {
		mayRepository.deleteById(maMay);
	}


	
	
}
