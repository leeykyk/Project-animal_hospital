package board.svc;

import java.sql.Connection;
import dao.BoardDAO;
import vo.BoardBean;
import static db.JdbcUtil.*;

public class BoardDetailService {

	public BoardBean getArticle(int board_number) throws Exception {

		BoardBean article = null;
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(con);
		int updateCount = boardDAO.updateReadCount(board_number); // 상세 글 내용을 볼 글의 조회수를 증가시키는 메서드를 호출

		if (updateCount > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		article = boardDAO.selectArticle(board_number); // 인자로 지정한 글번호의 정보를 반환하는 메서드를 호출
		close(con);
		return article;

	}
}
