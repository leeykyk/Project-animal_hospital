package animal.svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.AnimalDAO;
import vo.Animal;

public class AnimalModifyService {

	public boolean modifyArticle(Animal animal) throws Exception {
	boolean isModifySuccess = false;
	Connection con = getConnection();
	AnimalDAO animalDAO = AnimalDAO.getInstance();
	animalDAO.setConnection(con);
	int updateCount = animalDAO.updateAnimal(animal);

	if (updateCount > 0) {
		commit(con);
		isModifySuccess = true;
	} else {
		rollback(con);
	}

	close(con);
	return isModifySuccess;

	}
}

