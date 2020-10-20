package animal.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import vo.Animal;
import dao.AnimalDAO;

public class AnimalViewService {

	public Animal getAnimal(String Id) {
		Connection con = getConnection();
		AnimalDAO animalDAO = AnimalDAO.getInstance();
		animalDAO.setConnection(con);

		Animal animal = animalDAO.selectAnimal(Id); // 파라미터로 전송된 id 값을 가지고 있는 개 상품 정보 하나를 얻어오는 부분
		close(con);
		return animal;
	}


}