package fa.training.service;

import java.util.List;

import fa.training.entities.May;

public interface MayService {

	List<May> listAllMay();

	void save(May may);

	May findById(String maMay);

	void deleteById(String maMay);

}
