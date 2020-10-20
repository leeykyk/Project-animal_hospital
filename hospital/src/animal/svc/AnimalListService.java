package animal.svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import dao.AnimalDAO;
import vo.Animal;

public class AnimalListService {

	public ArrayList<Animal> getAnimalList() {
		AnimalDAO animalDAO = AnimalDAO.getInstance();
		Connection con = getConnection();
		animalDAO.setConnection(con);
		ArrayList<Animal> animalList = animalDAO.selectAnimalList(); // 개 상품 목록을 ArrayList 객체 타입으로 반환하는 메서드를 호출
		close(con);
		
		return animalList;
	}
	
}