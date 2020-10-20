package mem_animal.svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.mem_AnimalDAO;
import vo.mem_Animal;

public class AnimalMemberModifyService {
	
	public boolean modifyArticle(mem_Animal mem_animal) throws Exception {
	boolean isModifySuccess = false;
	Connection con = getConnection();
	mem_AnimalDAO mem_animalDAO = mem_AnimalDAO.getInstance();
	mem_animalDAO.setConnection(con);
	int updateCount = mem_animalDAO.updateAnimal(mem_animal);

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


